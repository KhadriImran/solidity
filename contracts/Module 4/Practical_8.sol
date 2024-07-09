// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevertExample {
    uint256 public data;

    // Function to set the value of data with input validation
    function setData(uint256 _data) public {
        if (_data <= 0) {
            revert("Value must be positive");
        }
        data = _data;
    }
}