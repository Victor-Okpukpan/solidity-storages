// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 myFavouriteNumber;

    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNumber = _favouriteNumber;
    }

    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavouriteNumber;

    function retrieve() public view returns (uint256) {
        return myFavouriteNumber;
    }

    function addPerson(uint256 _favouriteNumber, string memory _name) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
