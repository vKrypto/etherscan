// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VariableDemo {
    // State Variables: Persist on blockchain
    uint256 public stateVar = 1; 
    string public text = "State";

    function useVariables() public view returns (uint256, string memory) {
        // Local Variable: Temporary, exists only in function scope
        uint256 localVar = 2;
        string memory localText = "Local";
        return (localVar, localText);
    }

    function storageDemo() public {
        // Storage Variable: Persists in contract storage
        text = "Updated";
    }

    function memoryDemo() public pure returns (string memory) {
        // Memory Variable: Temporary, only during function execution
        string memory tempText = "Memory";
        return tempText;
    }
}
