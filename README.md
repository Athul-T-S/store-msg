MessageStorage Smart Contract

Overview
The MessageStorage smart contract allows users to store a personal message on the blockchain and retrieve it later. Messages are stored securely and can only be retrieved by the user who stored them. The contract enforces a limit of 100 characters per message to ensure efficient storage.

Features
Users can store a single message associated with their Ethereum address.
Only the user who stored a message can retrieve it.
Messages are limited to a maximum of 100 characters.
Implements basic error handling for invalid inputs or missing messages.
Requirements
Solidity Version: ^0.8.0
Ethereum Wallet: Compatible with wallets like MetaMask.
Development Environment: Tools like Remix IDE or frameworks like Hardhat or Truffle.
Contract Functions
1. storeMessage
Purpose: Allows a user to store a message.

Parameters:
newMessage (string): The message to be stored. Must be 100 characters or fewer.
Usage:
solidity
Copy code
storeMessage("Hello, Blockchain!");
Constraints:
The message length must be ≤ 100 characters.
2. retrieveMessage
Purpose: Allows the user to retrieve their stored message.

Returns:
A string containing the stored message.
Usage:
solidity
Copy code
retrieveMessage(); // Returns: "Hello, Blockchain!"
Constraints:
The user must have previously stored a message.
Deployment
Open the contract in your preferred Solidity development environment (e.g., Remix).
Compile the contract using Solidity version ^0.8.0.
Deploy the contract to a supported Ethereum network (e.g., Testnet or Mainnet).
Interact with the contract using the functions provided.
Example Workflow
Store a Message:
Call storeMessage with a string message up to 100 characters.

solidity
Copy code
storeMessage("Welcome to decentralized storage!");
Retrieve the Message:
Call retrieveMessage to view your stored message.

solidity
Copy code
retrieveMessage(); // Output: "Welcome to decentralized storage!"
Security
Access Control: Only the message owner can retrieve their stored message.
Input Validation: The contract ensures that messages do not exceed 100 characters.
License
This project is licensed under the MIT License.

Feel free to use, modify, and distribute this contract as per the license terms.

Contact
For any issues or questions, feel free to open an issue on this repository.
