In the diagrams Folder we can find the UML diagrams.

    Activity Diagram
    Sequence Diagram
    State Diagram
    Data Diagram


LIBRARIES

We use the Roles library to map different Roles.

IPFS

We are not using IPFS in the current scope.

ADDRESS
0x27D8D15CbC94527cAdf5eC14B69519aE23288B95

CONTRACT
0x3981eb484e3e58284f3039E96100B79F57ed8Ba5

TRANSACTION HASH
0x403a896c66f2380b61939b6af1af6048b9ff709a6204333ce6db3551d69fa670

NOTE

Truffle v4.1.14 (core: 4.1.14)
Solidity v0.4.24 (solc-js)
Ganache CLI v6.5.0






# Supply chain & data auditing

This repository containts an Ethereum DApp that demonstrates a Supply Chain flow between a Seller and Buyer. The user story is similar to any commonly used supply chain process. A Seller can add items to the inventory system stored in the blockchain. A Buyer can purchase such items from the inventory system. Additionally a Seller can mark an item as Shipped, and similarly a Buyer can mark an item as Received.

### Prerequisites

Please make sure you've already installed ganache-cli, Truffle and enabled MetaMask extension in your browser.

```
Give examples (to be clarified)
```

To Run the project
```

Launch Ganache:

```
ganache-cli -m "spirit supply whale amount human item harsh scare congress discover talent hamster"
```

Your terminal should look something like this:

![truffle test](images/ganache-cli.png)

In a separate terminal window, Compile smart contracts:

```
truffle compile
```

Your terminal should look something like this:

![truffle test](images/truffle_compile.png)

This will create the smart contract artifacts in folder ```build\contracts```.

Migrate smart contracts to the locally running blockchain, ganache-cli:

```
truffle migrate
```

Your terminal should look something like this:

![truffle test](images/truffle_migrate.png)

Test smart contracts:

```
truffle test
```

All 10 tests should pass.

![truffle test](images/truffle_test.png)

In a separate terminal window, launch the DApp:

```
npm run dev
```

## Built With

* [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts
* [IPFS](https://ipfs.io/) - IPFS is the Distributed Web | A peer-to-peer hypermedia protocol
to make the web faster, safer, and more open.
* [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.


## Authors


## Acknowledgments

* Solidity
* Ganache-cli
* Truffle
* IPFS

### Used Versions

Truffle v4.1.14 (core: 4.1.14)
Solidity v0.4.24 (solc-js)
