// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("My Token", "MTK") {
        // Mint 1000 tokens to the contract deployer
        _mint(msg.sender, 1000 * 10**18); // 18 decimal places (adjust as needed)
    }
}
