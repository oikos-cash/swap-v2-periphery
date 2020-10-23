const Router02 = artifacts.require('UniswapV2Router02')
const Migrator = artifacts.require('UniswapV2Migrator')

module.exports = async function(deployer, network) {
  let factoryAddress
  let factoryV1Address
  let WETHAddress
  console.log(network)
  if (network === 'nile') {
    // https://github.com/oikos-cash/swap-v2-core/blob/master/addresses.json
    factoryAddress = '0x41DA32Ec09Fb54aB5f5742F1eB730003caaC0BbF'
    // https://github.com/opentron/wrapped-trx/blob/master/addresses.json
    WETHAddress = '0x8f44113A985076431b77f6078f0929f949cB8836'
    factoryV1Address = '0x64d5aF91C3A4aE5dB503dA8be25b5E47ad2D944e'
  } else {
    factoryAddress = '0x3E59c50Fcfbb494328Cee937E8627e2A3Bd8FA83'
    WETHAddress = '0x891cdb91d149f23B1a45D9c5Ca78a88d0cB44C18'
    factoryV1Address = '0x0bdCBA8Ca6bAfcEc522F20eEF0CcE9BA603F3e43'
  }
  await deployer.deploy(Router02, ...[factoryAddress, WETHAddress])

  const routerAddress = Router02.address

  await deployer.deploy(Migrator, ...[factoryV1Address, routerAddress])
}
