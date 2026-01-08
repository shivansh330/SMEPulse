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

- **Latest Deployment**: [https://smepulse.vercel.app](https://smepulse.vercel.app)

## ⛓️ Smart Contract on Mantle Sepolia

- **Network**: Mantle Sepolia Testnet (Chain ID: 5003)
- **RPC URL**: `https://rpc.sepolia.mantle.xyz`
- **Explorer**: [Mantle Sepolia Explorer](https://sepolia.mantlescan.xyz/)
- **Token Symbol**: MNT

### 📋 Deployed Contract Addresses (Mantle Sepolia)

| Contract | Address | Description |
|----------|---------|-------------|
| **SMEPulse** | [`0x54f58D21fF4967726b9D8fA96d52c04D3346097a`](https://sepolia.mantlescan.xyz/address/0x54f58D21fF4967726b9D8fA96d52c04D3346097a) | Core NFT contract for invoice tokenization |
| **MintInvoiceAction** | [`0x9bd563aD53a3da82F251b368a775dE9E2BbC014d`](https://sepolia.mantlescan.xyz/address/0x9bd563aD53a3da82F251b368a775dE9E2BbC014d) | Contract for minting invoice NFTs |
| **PurchaseInvoiceAction** | [`0x2d60D7E5Cf666143F2daA5ee84D5d4bd3632d229`](https://sepolia.mantlescan.xyz/address/0x2d60D7E5Cf666143F2daA5ee84D5d4bd3632d229) | Contract for purchasing invoice NFTs |
| **SettleInvoiceAction** | [`0x8584a8C819Da80ceDa204b4BAC40123B909D2148`](https://sepolia.mantlescan.xyz/address/0x8584a8C819Da80ceDa204b4BAC40123B909D2148) | Contract for settling invoice payments |

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
<!-- 
## ⚙️ Getting Started (Local Setup)

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- MetaMask browser extension
- Mantle Sepolia tokens (from [Mantle Faucet](https://faucet.sepolia.mantle.xyz/))

### 1. Clone the Repository
```bash
git clone https://github.com/masumo/invoice-flow.git
cd invoice-flow
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Environment Setup
Copy the example environment file and configure:
```bash
cp .env.example .env
```

Edit `.env` with your values:
```env
PRIVATE_KEY=your_wallet_private_key_here
VITE_CONTRACT_ADDRESS=deployed_contract_address
VITE_RPC_URL=https://rpc.sepolia.mantle.xyz
VITE_CHAIN_ID=5003
VITE_NETWORK_NAME=Mantle Sepolia
```

### 4. Deploy Smart Contract (Optional)
If you want to deploy your own contract:
```bash
# Compile contracts
npx hardhat compile

# Deploy to Mantle Sepolia
npx hardhat run scripts/deploy-testnet.js --network mantleSepolia
```

### 5. Start Development Server
```bash
npm run dev
```

The application will be available at `http://localhost:5173`

### 6. Configure MetaMask
Add Mantle Sepolia to MetaMask:
- **Network Name**: Mantle Sepolia
- **RPC URL**: https://rpc.sepolia.mantle.xyz
- **Chain ID**: 5003
- **Currency Symbol**: MNT
- **Block Explorer**: https://sepolia.mantlescan.xyz -->

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
