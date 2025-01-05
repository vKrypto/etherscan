// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract IDataSchama {
    // State variables
    string public firstName;
    string public lastName;
    uint256 public age;
    address public owner;

    // Custom struct
    struct Address {
        string street;
        string city;
        uint256 zipCode;
    }
    Address public personAddress;

}

abstract contract DataSetter is IDataSchama{

    function setAddress(string calldata _street, string calldata _city, uint256 _zipCode) external {
        personAddress = Address(_street, _city, _zipCode);
    }

    function setName(string calldata _firstName, string calldata _lastName) external {
        firstName = _firstName;
        lastName = _lastName;
    }

    function setAge(uint256 _age) external {
        age = _age;
    }
}

abstract contract DataGetter is IDataSchama{
    
    constructor() {
        owner = msg.sender; // Set contract deployer as the owner
    }
    
    function getOwner() external view returns (address) {
        return owner;
    }

    function getFirstName() external view returns (string memory) {
        return firstName;
    }

    function getLastName() external view returns (string memory) {
        return lastName;
    }

    function getAddress() external view returns (string memory, string memory, uint256) {
        return (personAddress.street, personAddress.city, personAddress.zipCode);
    }

    function getAge() external view returns (uint256) {
        return age;
    }
}