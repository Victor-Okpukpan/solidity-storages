// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint _favouriteNumber
    ) public {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(
            _favouriteNumber
        );
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

    function sfAddPerson(
        uint256 _simpleStorageIndex,
        uint256 _favouriteNumber,
        string memory _name
    ) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[
            _simpleStorageIndex
        ];
        mySimpleStorage.addPerson(_favouriteNumber, _name);
    }
}
