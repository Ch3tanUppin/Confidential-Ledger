// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Guardian {
    mapping(bytes32 => bool) public approvedTx;
    event Decision(bytes32 txid, bool approved);

    function submitDecision(bytes32 txid, uint256 score) external {
        bool ok = score >= 90;
        approvedTx[txid] = ok;
        emit Decision(txid, ok);
    }
}
