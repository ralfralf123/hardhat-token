# Hardhat Token

This project aims to showcase the implementation of smart contracts in Solidity by using a local Hardhat network for development and deploying the contracts using the Remix IDE.

## Desciption 

The HardhatToken contract is a simple smart contract that implements an ERC-20 compatible token. The token is named "LacedNFT" with the symbol "LCD" and has a total supply of 1,000,000 tokens. The contract includes functions for minting, burning, and transferring tokens. The mintToken owner can only call the contract function, allowing the owner to mint new tokens and assign them to a specified address. The burnToken function allows users to burn their own tokens, reducing the token balance. The transfer function allows users to transfer tokens from their account to another specified address. Events such as Transfer, Burn, and Mint are emitted to provide information about token transfers, burns, and minting events. The contract also includes a function getTotalSupply to retrieve the token's total supply.

## Getting Started

### Installation

(*It is recommended that you have VSCode installed on your device.)

1. Clone or download the ZIP file of the project.
2. Extract the main project folder to any location of your local device.
3. Right-click the folder and click "Open code with VSCode".
4. Install the necessary dependencies by executing the command "npm i" in the terminal.

### Executing the Program

#### Setting up Hardhat's local network
1. After installing the necessary dependencies, type "npx hardhat node" in the terminal to start the local hardhat network.
2. Set up the Hardhat network in your Metamask using the following steps provided on this website (https://support.chainstack.com/hc/en-us/articles/4408642503449-Using-MetaMask-with-a-Hardhat-node).
3. Import a Metamask account using the provided private keys from Hardhat.

#### Compiling and Deploying the Contract
1. Copy the contents of hardhat.sol and paste it in Remix IDE.
2. Compile the smart contract.
3. Configure Remix to connect to the local network: In the Remix Solidity IDE, locate the "Deploy & run transactions" panel on the right side of the screen. You will find a dropdown menu at the top of the panel labeled "Environment."
4. Click on the dropdown menu and select the "Injected Provider" option.
5. Verify it on your Metamask Wallet using the Hardhat Network we set up.
6. Finally, you can deploy the smart contract and test its functionalities.

## Authors

- Ralf Anastacio
- Metacrafters (ETH + AVAX PROOF: Intermediate EVM Course)
