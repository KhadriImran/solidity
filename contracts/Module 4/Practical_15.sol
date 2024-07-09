// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherUnitsExample {
    uint256 public amountInWei;
    uint256 public amountInGwei;
    uint256 public amountInEther;

    function setAmounts() public {
        amountInWei = 1 wei;
        amountInGwei = 1 gwei;
        amountInEther = 1 ether;
    }

    // Function to convert ether to wei
    function convertEtherToWei(uint256 etherAmount) public pure returns (uint256) {
        return etherAmount * 1 ether;
    }

    // Function to convert wei to ether
    function convertWeiToEther(uint256 weiAmount) public pure returns (uint256) {
        return weiAmount / 1 ether;
    }
}