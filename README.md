# TriggerX
TriggerX AVS developed from scratch using Othentic Stack.

- Website: [TriggerX](https://www.triggerx.network/)
- Twitter: [TriggerX](https://x.com/TriggerXnetwork)
- EigeLayer Page : [TriggerX](https://holesky.eigenlayer.xyz/avs/0x0c77b6273f4852200b17193837960b2f253518fc/operator-set/4294967295)


## Set the Deployer Keystore

- Create a .env file and set the private key of the deployer (without 0x prefix) and the chains ids
- Run the wallet script

```bash
othentic-cli wallet encrypt --private-key PRIVATE_KEY
```

This save the keystore in the `.keystore` folder.

## Deploy the Contracts
We need to deploy the contracts on the two chains, as per Othentic Stack requirements.

```bash
othentic-cli network deploy \
 --name TriggerX \
 --eth \
 --l1-chain holesky \
 --l2-chain base-sepolia \
 --l1-initial-deposit 200000000000000000 \
 --l2-initial-deposit 200000000000000000 \
 --avs-governance-multisig-owner ADDRESS \
 --keystore .keystore/FILENAME
```

Here, we are deploying contracts on Holesky and Base Sepolia Testnet, with 0.2 ETH initial deposit for messaging tokens.


Check the deployed contracts with:

```bash
othentic-cli network contracts
```

## AVS Registration and Whitelist Strategies

Run the cmd to register the AVS on EigenLayer:

```bash
othentic-cli network register
```

Run the cmd to whitelist the AVS on EigenLayer:

```bash
othentic-cli network set-staking-contracts
```

We have whitelisted the following strategies:

```
stETH, rETH, WETH, lsETH, sfrxETH, ETHx, osETH, cbETH, mETH, ankrETH, EIGEN
```

## AVS Logic implementation

We use [AVS Sample](https://github.com/Othentic-Labs/avs-examples/tree/main/simple-price-oracle-avs-go-example) as our blueprint.

The structure of the AVS is explained in the [AVS](avs/README.md) folder.

## Nodes Setup

We need to setup the nodes - Performer, Attestor, Aggregator, and Bootnodes.

Aggregator will also work as Bootstrap Node in our AVS.

### Aggregator (Running)

```
othentic-cli node aggregator --json-rpc --internal-tasks --metrics --delay 15000
```

The delay is set to 15 seconds, so the aggregator will wait 15 seconds before submitting the task to the EigenLayer.

### Performer

Currently, the performer will be single, Mulan. The rest 10 registered royalty will be attestors.