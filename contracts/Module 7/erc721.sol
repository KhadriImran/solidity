// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721, ERC721URIStorage {
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        // Initialize your NFT contract with a name and symbol
    }

    function mint(address _to, uint256 _tokenId, string memory _tokenURI) external {
        // Mint a new NFT with a unique token ID and associated metadata URI
        _mint(_to, _tokenId);
        _setTokenURI(_tokenId, _tokenURI);
    }
}
