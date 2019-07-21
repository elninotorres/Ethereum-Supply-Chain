// migrating the appropriate contracts
var TailorRole = artifacts.require("./TailorRole.sol");
var DeliveryAgentRole = artifacts.require("./DeliveryAgentRole.sol");
var OnlineConsumer = artifacts.require("./ConsumerRole.sol");
var SupplyChain = artifacts.require("./SupplyChain.sol");

module.exports = function(deployer) {
  deployer.deploy(TailorRole);
  deployer.deploy(DeliveryAgentRole);
  deployer.deploy(OnlineConsumer);
  deployer.deploy(SupplyChain);
};
