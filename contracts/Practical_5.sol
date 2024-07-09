// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionModifier {
    address public owner;
    uint256 public data;

    modifier onlyOwner() {
        require(msg.sender == owner, "not a owner");
        _;
    }

    modifier positiveValue(uint256 _value) {
        require(_value > 0, "Value must be positive");
        _;
    }

    constructor() {
        owner=msg.sender;
    }

    function setData(uint256 _data) public onlyOwner positiveValue (_data){
        data =_data;
    }

    function getData() public view returns (uint256) {
        return data;
    }
}