// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AIInteractionLogger {
    struct Interaction {
        address user;
        uint256 timestamp;
    }

    Interaction[] public interactions;

    function logInteraction() public {
        interactions.push(Interaction(msg.sender, block.timestamp));
    }

    function getInteractionCount() public view returns (uint256) {
        return interactions.length;
    }
}
