# TriggerX
TriggerX AVS developed from scratchusing Othentic Stack

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

## AVS Logic implementation

We use [AVS Sample](https://github.com/Othentic-Labs/simple-price-oracle-avs-example) as our blueprint.
