// SPDX-License-Identifier: MIT
// License identifier indicating the code is open-source under the MIT License.

pragma solidity ^0.8.0;
// Specifies the Solidity compiler version (0.8.x) required to compile this contract.

contract MessageStorage {
    // Defines the contract named "MessageStorage".
    
    struct UserMessage {
        string message; // Stores the user's message as a string.
        bool exists;    // Tracks whether a message has been stored for this user.
    }

    mapping(address => UserMessage) private messages;
    // Maps an Ethereum address to a UserMessage struct.
    // Marked private to restrict direct access to the mapping.

    // Function to store a new message for the caller's address.
    function storeMessage(string calldata newMessage) external {
        require(
            bytes(newMessage).length <= 100,
            "Message must be 100 characters or fewer"
        );
        // Ensures the message length does not exceed 100 characters. Throws an error otherwise.

        messages[msg.sender] = UserMessage(newMessage, true);
        // Stores the message in the mapping for the sender's address and marks "exists" as true.
    }

    // Function to retrieve the stored message for the caller's address.
    function retrieveMessage() external view returns (string memory) {
        require(
            messages[msg.sender].exists,
            "No message stored for this user"
        );
        // Checks if a message exists for the caller's address. Throws an error if none exists.

        return messages[msg.sender].message;
        // Returns the stored message for the caller's address.
    }
}
