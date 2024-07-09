// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleFunction {
    uint256 public data;

    function setData(uint256 _data) public {
        data=_data;
    }

    function getData() public view returns(uint256) {
        return data;
    }

    function doubleData() internal view returns(uint256) {
        return data * 2;
    }

    function tripleData() external view returns(uint256) {
        return data * 3;
    }
}