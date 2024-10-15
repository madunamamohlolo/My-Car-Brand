// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Car.sol";

// Child contract inheriting from Car
contract RangeRover is Car {
    string public model;

    constructor(string memory _model, string memory _brand, uint _speed) 
        Car(_brand, _speed) 
    {
        model = _model;
    }

    function offRoadMode() public pure returns (string memory) {
        return "Off-road mode activated!";
    }

    function getModel() public view returns (string memory) {
        return model;
    }
}