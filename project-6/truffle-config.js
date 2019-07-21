const HDWalletProvider = require('truffle-hdwallet-provider');
const mnemonic = "web inhale load hobby vicious escape siren announce huge renew action monkey";


module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      provider: () => {
        return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/a57a60e8463d416ba9b489a9a68a28de");
      },
      network_id: 4,
      gas: 4500000,        // rinkeby has a lower block limit than mainnet
      gasPrice: 10000000000
    },
  }
};