// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 storedData;


    function set(uint256 x) public {       // Function to chage the value of storeData
        storedData = x;
    }

    function get() public view returns (uint256) {    // Function to check the value of storeData
        return storedData;
    }
}