// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract structExample {
    struct Person {
        string name;
        uint256 age;
        address wallet;
    }

    Person public person;

    function setPerson(string memory _name, uint256 _age, address _wallet) public {
        person.name=_name;
        person.age=_age;
        person.wallet=_wallet;
    }

    function getPerson() public view returns (string memory, uint256, address) {
        return (person.name, person.age, person.wallet);
    }
}