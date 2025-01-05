// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableTypes {
    // State Variable (Persistent storage on the blockchain)
    string public stateVar = "State Variable";

    function useMemoryVariable() public pure returns (string memory) {
        // Memory Variable (Temporary, exists during function execution)
        string memory memoryVar = "Memory Variable";
        return memoryVar;
    }

    function useStorageVariable() public {
        // Storage Variable (Persistent reference to state variable)
        string storage storageVar = stateVar;

        // To update, modify the stateVar directly
        stateVar = "Updated State Variable";

        // If you want to update via the storage pointer:
        // storageVar = "Updated State Variable"; // INVALID for string literals
        // Instead, use a helper for string concatenation, if needed.
    }
    function useCalldataVariable(string calldata input) external pure returns (string calldata) {
        // Calldata Variable (Immutable, for external function inputs)
        return input;
    }

    function showcase() external view returns (string memory, string memory) {
        // Local variables stored on the EVM stack
        string memory localMemoryVar = "Local Variable";
        return (stateVar, localMemoryVar);
    }
}
