# SMEPulse

A decentralized application for SME invoice financing on the Mantle Network, enabling real-world asset tokenization and DeFi solutions for trade finance.

## 🎯 The Problem We Solve

Small and Medium Enterprises (SMEs) face a critical cash flow gap in global trade finance. When SMEs deliver goods or services, they often wait 30-90 days for payment from clients, creating liquidity challenges that can:

- **Limit Growth**: Unable to take on new orders due to cash flow constraints
- **Increase Costs**: Forced to seek expensive short-term financing
- **Risk Business**: Cash flow gaps can threaten business continuity
- **Reduce Competitiveness**: Cannot offer competitive payment terms to clients

Traditionally, invoice factoring and trade finance solutions are expensive, slow, and often exclusive to established businesses.

## ✨ Our Solution

**SMEPulse** revolutionizes trade finance through **Real-World Asset (RWA) tokenization** on the Mantle Network:

### 🏭 For SMEs (Invoice Issuers)
- **Instant Liquidity**: Convert invoices to NFTs and sell them immediately
- **Transparent Pricing**: Market-driven pricing with clear terms
- **Global Access**: Reach international investors without intermediaries
- **Lower Costs**: Reduced fees compared to traditional factoring

### 💰 For Investors (Invoice Buyers)
- **Real-World Returns**: Earn yields from actual business transactions
- **Diversified Portfolio**: Invest across different industries and geographies
- **Transparent Risk**: Clear invoice details and SME information
- **Liquid Assets**: Trade invoice NFTs on secondary markets

### 🔄 How It Works
1. **SME Tokenization**: SMEs mint their invoices as NFTs with metadata
2. **Marketplace Listing**: Invoices appear on the investor marketplace
3. **Investor Purchase**: Investors buy invoice NFTs at a discount using MNT
4. **Client Payment**: When due, clients pay the full invoice amount
5. **Automatic Settlement**: Smart contracts distribute payments to investors

### 🚀 Key Features:

#### ⚡ **Mantle Network Integration**
Optimized for **Mantle Sepolia Testnet** with high-performance L2 capabilities.

#### 🤖 **Automated Invoice Settlement** 
Smart contract-driven payment distribution ensures investors receive their funds automatically upon client repayment.

---

## 🚀 Live Demo & Links

- **Latest Deployment**: [https://smepulse.onrender.com/](https://smepulse.onrender.com/)

## ⛓️ Smart Contract on Mantle Sepolia

- **Network**: Mantle Sepolia Testnet (Chain ID: 5003)
- **RPC URL**: `https://rpc.sepolia.mantle.xyz`
- **Explorer**: [Mantle Sepolia Explorer](https://sepolia.mantlescan.xyz/)
- **Token Symbol**: MNT

### 📋 Deployed Contract Addresses (Mantle Sepolia)

| Contract | Address | Description |
|----------|---------|-------------|
| **SMEPulse** | [`0x13B1AA8fD3B12bf00103D3cF86e42F46F7933881`](https://sepolia.mantlescan.xyz/address/0x13B1AA8fD3B12bf00103D3cF86e42F46F7933881) | Core NFT contract for invoice tokenization |
| **MintInvoiceAction** | [`0x8d91b9841511dD00af35407382F3208a54bEDd2E`](https://sepolia.mantlescan.xyz/address/0x8d91b9841511dD00af35407382F3208a54bEDd2E) | Contract for minting invoice NFTs |
| **PurchaseInvoiceAction** | [`0x9C289F6933fa06651cd0496af2a17023C8A358DE`](https://sepolia.mantlescan.xyz/address/0x9C289F6933fa06651cd0496af2a17023C8A358DE) | Contract for purchasing invoice NFTs |
| **SettleInvoiceAction** | [`0x3D32AD922dBeBa2008B63A5e9A3fdAE9c1DbFbB8`](https://sepolia.mantlescan.xyz/address/0x3D32AD922dBeBa2008B63A5e9A3fdAE9c1DbFbB8) | Contract for settling invoice payments |

> **Note**: Update these addresses in your `.env` file after deployment.

## 💡 Why Mantle Network?

Mantle is the perfect layer-2 blockchain for SMEPulse:

### 🚀 **Performance & Innovation**
- **Hyper-Low Fees**: Cost-effective transactions for high-volume invoice processing
- **Fast Finality**: Quick transaction confirmation for immediate liquidity
- **Modular Design**: Enhanced scalability and data availability

### 🏢 **Developer & User Friendly**
- **EVM Compatibility**: Full Ethereum tooling support
- **MNT Native Token**: Streamlined utility and governance
- **Growing Ecosystem**: Robust institutional and community support

## 🛠️ Tech Stack

### **Blockchain & Smart Contracts**
- **Solidity**: Smart contract development (v0.8.20)
- **OpenZeppelin**: Security-audited contract libraries
- **Hardhat**: Development environment and testing
- **Mantle Network**: L2 infrastructure for scaling

### **Frontend & Web3**
- **React.js**: Modern frontend framework
- **Vite**: Fast build tool and dev server
- **Ethers.js v6**: Web3 library for blockchain interactions
- **Tailwind CSS**: Utility-first styling framework

## 📱 Usage Guide

### For SMEs (Small & Medium Enterprises)
1. **Connect Wallet**: Connect your MetaMask wallet
2. **Access SME Dashboard**: Navigate to the SME Dashboard
3. **Create Invoice**: Fill in invoice details (client, amount, due date)
4. **Set Sale Price**: Choose your discount rate for immediate liquidity
5. **Tokenize**: Mint your invoice as an NFT on Mantle
6. **Receive Payment**: Get immediate payment when an investor buys your invoice

### For Investors
1. **Connect Wallet**: Connect your MetaMask wallet with MNT tokens
2. **Browse Marketplace**: View available invoice NFTs
3. **Analyze Opportunities**: Check ROI, due dates, and risk factors
4. **Purchase Invoices**: Buy invoice NFTs at discounted prices
5. **Track Portfolio**: Monitor your investments and returns
6. **Collect Returns**: Receive full invoice value when clients pay

**Empowering global trade through decentralized finance on Mantle Network**
