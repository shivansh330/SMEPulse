// Blockchain utility functions

/**
 * Get the appropriate explorer URL based on network
 * @param {string|number} chainId - The chain ID
 * @returns {string} - Base URL for explorer
 */
export const getExplorerBaseUrl = (chainId) => {
  const cid = chainId?.toString()
  switch (cid) {
    case '5003': // Mantle Sepolia Testnet
      return 'https://sepolia.mantlescan.xyz'
    case '747': // Flow EVM Mainnet
      return 'https://flowscan.org'
    case '545': // Flow EVM Testnet (current)
    case '646': // Flow EVM Testnet (old)
      return 'https://evm-testnet.flowscan.io'
    case '1337': // Local Hardhat
      return 'https://sepolia.mantlescan.xyz'
    default:
      return 'https://sepolia.mantlescan.xyz' // Default to Mantle Sepolia
  }
}

/**
 * Generate transaction URL
 * @param {string} txHash - Transaction hash
 * @param {string|number} chainId - Chain ID
 * @returns {string} - Complete URL to view transaction on explorer
 */
export const getTransactionUrl = (txHash, chainId = '5003') => {
  const baseUrl = getExplorerBaseUrl(chainId)
  return `${baseUrl}/tx/${txHash}`
}

/**
 * Generate address URL
 * @param {string} address - Wallet/contract address
 * @param {string|number} chainId - Chain ID
 * @returns {string} - Complete URL to view address on explorer
 */
export const getAddressUrl = (address, chainId = '5003') => {
  const baseUrl = getExplorerBaseUrl(chainId)
  return `${baseUrl}/address/${address}`
}

/**
 * Generate token URL
 * @param {string} contractAddress - Token contract address
 * @param {string} tokenId - Token ID
 * @param {string|number} chainId - Chain ID
 * @returns {string} - Complete URL to view token on explorer
 */
export const getTokenUrl = (contractAddress, tokenId, chainId = '5003') => {
  const baseUrl = getExplorerBaseUrl(chainId)
  return `${baseUrl}/token/${contractAddress}?a=${tokenId}`
}

/**
 * Format transaction hash for display
 * @param {string} txHash - Transaction hash
 * @returns {string} - Formatted hash for display
 */
export const formatTxHash = (txHash) => {
  if (!txHash) return ''
  return `${txHash.slice(0, 6)}...${txHash.slice(-4)}`
}

/**
 * Check if we're on a supported network
 * @param {string|number} chainId - Chain ID
 * @returns {boolean} - True if on supported network
 */
export const isSupportedNetwork = (chainId) => {
  const cid = chainId?.toString()
  return ['747', '646', '545', '5003'].includes(cid)
}

/**
 * Get network name from chain ID
 * @param {string|number} chainId - Chain ID
 * @returns {string} - Network name
 */
export const getNetworkName = (chainId) => {
  const cid = chainId?.toString()
  switch (cid) {
    case '5003':
      return 'Mantle Sepolia'
    case '747':
      return 'Flow EVM Mainnet'
    case '646':
    case '545':
      return 'Flow EVM Testnet'
    case '1337':
      return 'Hardhat Local'
    default:
      return 'Unknown Network'
  }
}