// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ModelRegistry {
    address public admin;
    mapping(bytes32 => bool) public approvedModels;

    constructor() {
        admin = msg.sender;
    }

    function approveModel(bytes32 modelHash) external {
        require(msg.sender == admin, "only admin");
        approvedModels[modelHash] = true;
    }
}
