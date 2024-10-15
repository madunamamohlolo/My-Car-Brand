// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMarketplace {
    function getProductDetails() external view returns (string memory, uint);
}

contract RangeRoverCaller {
    address public marketplaceAddress;

    constructor(address _marketplaceAddress) {
        marketplaceAddress = _marketplaceAddress;
    }

    function callMarketplace() public view returns (string memory, uint) {
        IMarketplace marketplace = IMarketplace(marketplaceAddress);
        return marketplace.getProductDetails();
    }
}