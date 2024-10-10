// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Parent contract
contract Car {
    string public brand;
    uint public speed;

    constructor(string memory _brand, uint _speed) {
        brand = _brand;
        speed = _speed;
    }

    function accelerate(uint amount) public {
        speed += amount;
    }

    function getBrand() public view returns (string memory) {
        return brand;
    }

    function getSpeed() public view returns (uint) {
        return speed;
    }
}