// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Marketplace {
    string public product;
    uint public price;

    constructor(string memory _product, uint _price) {
        product = _product;
        price = _price;
    }

    function getProductDetails() public view returns (string memory, uint) {
        return (product, price);
    }
}