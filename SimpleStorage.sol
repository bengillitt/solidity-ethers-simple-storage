// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // This is a comment

// EVM, Ethereum Virtual Machine
// Avalanche, Fnatom, Polygon

contract SimpleStorage {
    // boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = true;
    uint256 favoriteNumber; // = 0
    // string favoriteNumberInText = "Five";
    // int256 favoriteInt = -5;
    // address myAddress = 0x9A0c545164d716C58e9AE3D11e36D9F0b484BfaB;
    // bytes32 favoriteBytes = "cat"; // 0x123412hkl;aasdf

    // People public person = People({favoriteNumber: 2, name: "Patrick"});

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public favoriteNumbersList;
    People[] public people;

    // 0: 2, Patrick, 2: 7, Jon

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
