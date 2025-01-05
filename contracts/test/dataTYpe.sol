// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Person {
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

    // Constructor to initialize owner
    constructor() {
        owner = msg.sender; // Setting the contract deployer as the owner
    }

    // Setter for firstName and lastName
    function setName(string calldata _firstName, string calldata _lastName) external {
        firstName = _firstName;
        lastName = _lastName;
    }

    // Getter for full name (memory type used for temporary storage)
    function getFullName() external view returns (string memory) {
        return string(abi.encodePacked(firstName, " ", lastName));
    }

    // Setter for age
    function setAge(uint256 _age) external {
        age = _age;
    }

    // Getter for age
    function getAge() external view returns (uint256) {
        return age;
    }

    // Setter for address (struct)
    function setAddress(string calldata _street, string calldata _city, uint256 _zipCode) external {
        personAddress = Address(_street, _city, _zipCode);
    }

    // Getter for address
    function getAddress() external view returns (string memory, string memory, uint256) {
        return (personAddress.street, personAddress.city, personAddress.zipCode);
    }

    // Getter for owner
    function getOwner() external view returns (address) {
        return owner;
    }
}
