// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract castVote{
    address[] public voters;
    uint public numberOfVotes;

    function vote(address _voter) public{
        numberOfVotes += 1;
        voters.push(_voter);
    }
}

contract castVoteProxy {
    address[] public voters;
    uint public numberOfVotes;

    function vote(address _contract ,address _voter) public payable {
        // OneCall's storage is set, Twocall is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("vote(address)", _voter)
        );
    }
}