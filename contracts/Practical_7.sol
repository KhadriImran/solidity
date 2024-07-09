// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireExample {
    uint256 public data;

    // Function to set the value of data with input validation
    function setData(uint256 _data) public {
        require(_data > 0, "Value must be positive");
        data = _data;
    }
}