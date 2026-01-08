// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./SMEPulse.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/**
 * @title SettleInvoiceAction
 * @dev FLIP-338 Action for settling invoice NFTs (repayment or default)
 */
contract SettleInvoiceAction is Ownable, ReentrancyGuard {
    // The SMEPulse contract
    SMEPulse public immutable SMEPulse;
    
    // Action metadata
    string public constant name = "SettleInvoiceAction";
    string public constant description = "Settle an invoice NFT through repayment or default";
    string public constant version = "1.0.0";
    
    // Events
    event InvoiceSettled(
        uint256 indexed tokenId,
        address indexed settler,
        address indexed recipient,
        uint256 amount,
        bool isRepayment
    );
    
    constructor(address _SMEPulse) Ownable(msg.sender) {
        require(_SMEPulse != address(0), "Invalid SMEPulse address");
        SMEPulse = SMEPulse(_SMEPulse);
    }
    
    /**
     * @dev Execute the settlement action
     * @param tokenId The ID of the invoice NFT to settle
     * @param isRepayment True if settling through repayment, false if marking as defaulted
     * @return success Whether the action was successful
     */
    function execute(uint256 tokenId, bool isRepayment) external payable nonReentrant returns (bool success) {
        // Get invoice details
        SMEPulse.Invoice memory invoice = SMEPulse.getInvoice(tokenId);
        require(invoice.status == SMEPulse.Status.Sold, "Invoice not in sold state");
        
        address currentOwner = SMEPulse.ownerOf(tokenId);
        
        if (isRepayment) {
            // Handle repayment
            require(msg.sender == invoice.client, "Only client can repay");
            require(msg.value >= invoice.faceValue, "Insufficient payment amount");
            
            // Transfer full amount to current NFT owner (investor)
            (bool transferSuccess,) = currentOwner.call{value: msg.value}("");
            require(transferSuccess, "Payment transfer failed");
            
            // Update invoice status
            SMEPulse.markAsRepaid(tokenId);
            
            // Emit event
            emit InvoiceSettled(
                tokenId,
                msg.sender,
                currentOwner,
                msg.value,
                true
            );
        } else {
            // Handle default
            require(
                msg.sender == currentOwner || msg.sender == owner(),
                "Only owner or investor can mark default"
            );
            
            // Update invoice status
            SMEPulse.markAsDefaulted(tokenId);
            
            // Emit event
            emit InvoiceSettled(
                tokenId,
                msg.sender,
                currentOwner,
                0,
                false
            );
        }
        
        return true;
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