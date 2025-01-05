// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./_utils.sol";

contract Person is DataSetter, DataGetter {
    function getFullName() external view returns (string memory) {
        return string(abi.encodePacked(firstName, " ", lastName));
    }
    string public storedName = "John";
}
