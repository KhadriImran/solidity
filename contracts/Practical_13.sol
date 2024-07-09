// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    // Mapping from address to uint256
    mapping(address => uint256) public balances;

    // Function to set the balance of a specific address
    function setBalance(address _address, uint256 _balance) public {
        balances[_address] = _balance;
    }

    // Function to get the balance of a specific address
    function getBalance(address _address) public view returns (uint256) {
        return balances[_address];
    }
}