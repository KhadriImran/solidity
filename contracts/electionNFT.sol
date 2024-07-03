// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ElectionNFT {
    // Struct to store candidate details
    struct Candidate {
        string name;
        string party;
    }

    // Variables
    uint256 public tokenCounter;
    mapping(uint256 => address) private _owners;
    mapping(address => uint256) private _balances;
    mapping(uint256 => Candidate) public candidates;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event CandidateCreated(uint256 indexed tokenId, string name, string party);

    // Constructor
    constructor() {
        tokenCounter = 0;
    }

    // Function to create a new candidate NFT
    function createCandidateNFT(string memory name, string memory party) public {
        uint256 newTokenId = tokenCounter;
        candidates[newTokenId] = Candidate(name, party);
        _owners[newTokenId] = msg.sender;
        _balances[msg.sender] += 1;
        emit Transfer(address(0), msg.sender, newTokenId);
        emit CandidateCreated(newTokenId, name, party);
        tokenCounter++;
    }

    // Function to get the balance of an address
    function balanceOf(address owner) public view returns (uint256) {
        require(owner != address(0), "Address zero is not a valid owner");
        return _balances[owner];
    }

    // Function to get the owner of a specific token
    function ownerOf(uint256 tokenId) public view returns (address) {
        address owner = _owners[tokenId];
        require(owner != address(0), "Token ID does not exist");
        return owner;
    }

    // Function to transfer ownership of a token
    function transferFrom(address from, address to, uint256 tokenId) public {
        require(from == msg.sender, "You are not the owner of this token");
        require(from == _owners[tokenId], "From address is not the owner");
        require(to != address(0), "Cannot transfer to the zero address");

        _balances[from] -= 1;
        _balances[to] += 1;
        _owners[tokenId] = to;

        emit Transfer(from, to, tokenId);
    }

    // Function to get candidate details
    function getCandidate(uint256 tokenId) public view returns (string memory name, string memory party) {
        require(_owners[tokenId] != address(0), "Token ID does not exist");
        Candidate memory candidate = candidates[tokenId];
        return (candidate.name, candidate.party);
    }
}
