const Router02 = artifacts.require('UniswapV2Router02')

module.exports = function(deployer, network) {
  let factoryAddress
  let WETHAddress
  console.log(network)
  if (network === 'nile') {
    // https://github.com/oikos-cash/swap-v2-core/blob/master/addresses.json
    factoryAddress = '0x8df71B972162A84231611592eDFC8cd9A318A9eF'
    // https://github.com/opentron/wrapped-trx/blob/master/addresses.json
    WETHAddress = '0x8f44113A985076431b77f6078f0929f949cB8836'
  } else {
    throw new Error('TODO(tron): deploy factory / WETH on mainnet')
  }
  deployer.deploy(Router02, ...[factoryAddress, WETHAddress])
}
