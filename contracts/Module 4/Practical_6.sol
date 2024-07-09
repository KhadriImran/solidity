// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample {
    uint256 public data;

    event DataChanged(uint256 oldValue, uint256 newValue);

    function setData(uint256 _data) public {
        uint256 oldValue = data;
        data=_data;
        emit DataChanged(oldValue, _data);
    }

    function getData() public view returns (uint256) {
        return data;
    }
}