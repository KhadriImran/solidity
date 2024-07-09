// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public storedData; // State variable

    function set(uint256 x) public {
        storedData = x; // Sets the value of the state variable
    }

    function get() public view returns (uint256) {
        return storedData; // Returns the value of the state variable
    }
}