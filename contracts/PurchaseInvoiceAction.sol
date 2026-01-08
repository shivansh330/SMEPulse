// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./SMEPulse.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title PurchaseInvoiceAction
 * @dev FLIP-338 Action for purchasing invoice NFTs
 */
contract PurchaseInvoiceAction is Ownable, ReentrancyGuard {
    // The SMEPulse contract
    SMEPulse public immutable SMEPulse;
    
    // Platform fee percentage (in basis points, e.g., 100 = 1%)
    uint256 public platformFeeRate;
    
    // Platform wallet for fee collection
    address public platformWallet;
    
    // Action metadata
    string public constant name = "PurchaseInvoiceAction";
    string public constant description = "Purchase an invoice NFT with specified payment";
    string public constant version = "1.0.0";
    
    // Event emitted when an invoice is purchased
    event InvoicePurchased(
        uint256 indexed tokenId,
        address indexed buyer,
        address indexed seller,
        uint256 purchaseAmount,
        uint256 platformFee
    );
    
    constructor(
        address _SMEPulse,
        uint256 _platformFeeRate,
        address _platformWallet
    ) Ownable(msg.sender) {
        require(_SMEPulse != address(0), "Invalid SMEPulse address");
        require(_platformFeeRate <= 1000, "Platform fee rate too high"); // Max 10%
        require(_platformWallet != address(0), "Invalid platform wallet");
        
        SMEPulse = SMEPulse(_SMEPulse);
        platformFeeRate = _platformFeeRate;
        platformWallet = _platformWallet;
    }
    
    /**
     * @dev Execute the purchase action
     * @param tokenId The ID of the invoice NFT to purchase
     * @return success Whether the action was successful
     */
    function execute(uint256 tokenId) external payable nonReentrant returns (bool success) {
        // Get invoice details
        SMEPulse.Invoice memory invoice = SMEPulse.getInvoice(tokenId);
        require(invoice.status == SMEPulse.Status.OnMarket, "Invoice not for sale");
        require(msg.value == invoice.salePrice, "Incorrect payment amount");
        require(msg.sender != invoice.sme, "SME cannot buy their own invoice");
        
        // Calculate platform fee
        uint256 platformFee = (msg.value * platformFeeRate) / 10000;
        uint256 sellerAmount = msg.value - platformFee;
        
        // Transfer payment to SME and platform
        (bool platformTransferSuccess,) = platformWallet.call{value: platformFee}("");
        require(platformTransferSuccess, "Platform fee transfer failed");
        
        (bool sellerTransferSuccess,) = invoice.sme.call{value: sellerAmount}("");
        require(sellerTransferSuccess, "Seller payment transfer failed");
        
        // Update invoice status and transfer NFT to buyer
        // The SMEPulse contract will handle the transfer internally
        SMEPulse.updateInvoiceStatus(tokenId, SMEPulse.Status.Sold, msg.sender);
        
        // Emit event
        emit InvoicePurchased(
            tokenId,
            msg.sender,
            invoice.sme,
            msg.value,
            platformFee
        );
        
        return true;
    }
    
    /**
     * @dev Update platform fee rate (owner only)
     * @param newRate New fee rate in basis points
     */
    function updatePlatformFeeRate(uint256 newRate) external onlyOwner {
        require(newRate <= 1000, "Platform fee rate too high"); // Max 10%
        platformFeeRate = newRate;
    }
    
    /**
     * @dev Update platform wallet (owner only)
     * @param newWallet New platform wallet address
     */
    function updatePlatformWallet(address newWallet) external onlyOwner {
        require(newWallet != address(0), "Invalid platform wallet");
        platformWallet = newWallet;
    }
    
    /**
     * @dev Get the action metadata
     * @return name The name of the action
     * @return description A description of what the action does
     * @return version The semantic version of the action
     */
    function getMetadata() external pure returns (
        string memory,
        string memory,
        string memory
    ) {
        return (name, description, version);
    }
    
    // Allow contract to receive native token payments
    receive() external payable {}
}