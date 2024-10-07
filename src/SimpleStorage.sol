// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {
    uint public myNumber;

    struct Person {
        uint number;
        string name;
    }
    Person[] public persons;

    mapping(string => uint) public personsDetails;

    function setNumber(uint _number) external {
        myNumber = _number;
    }

    function addPerson(uint _number, string memory _name) external {
        personsDetails[_name] = _number;
        persons.push(Person(_number, _name));
    }
}
