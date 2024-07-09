// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyERC1155 is ERC1155, Ownable {

    mapping(uint256 => uint256) public totalSupply;

    constructor() ERC1155("https://example.com/api/token/{id}.json") {
        // Mint initial supply
        mint(msg.sender, 1, 100); // Mint 100 tokens of type 1 and assign them to the contract deployer
    }

    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
        _mint(account, id, amount, "");
        totalSupply[id] += amount;
    }

    function burn(address account, uint256 id, uint256 amount) public onlyOwner {
        require(balanceOf(account, id) >= amount, "Insufficient balance");
        _burn(account, id, amount);
        totalSupply[id] -= amount;
    }

    function uri(uint256 id) public view override returns (string memory) {
        return string(abi.encodePacked(super.uri(id), "/metadata.json"));
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC1155, ERC165) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
