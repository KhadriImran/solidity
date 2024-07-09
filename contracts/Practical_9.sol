// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AsserExample {
    uint256 public data;

    function setData(uint256 _data) public {
        data=_data;
        assert(data==_data);
    }
}