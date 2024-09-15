// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

// Solution: "hours", "days", "minutes", "1 seconds."
// block.timestamp is in seconds from the Unix epoch (January 1, 1970, 00:00:00 UTC) UTC: Coordinated Universal Time. 
// Local time zones are expressed as offsets from UTC (UTC+5, UTC-7), extremely accurate, based on atomic clocks, while also accounting for the Earth's rotation by occasionally adding leap seconds.
// UTC replaced Greenwich Mean Time (GMT) as the world's time standard.
// UNIX is an operating system created in the 70s and Jan 1 1970 was arbitrarily chosen as the "zero point" for Unix-based timekeeping, so the value is in seconds increasing from 0 from January 1, 1970 at 00:00:00 UTC.
// Call is lower level and the compiler checks if a recipient is payable for send and transfer, but call is "lower-level" and you can directly call functions on a contract using the payload field.

contract IdiotBettingGame {
    /*
        This exercise assumes you know how block.timestamp works.
        - Whoever deposits the most ether into a contract wins all the ether if no-one 
          else deposits after an hour.
        1. `bet` function allows users to deposit ether into the contract. 
           If the deposit is higher than the previous highest deposit, the endTime is 
           updated by current time + 1 hour, the highest deposit and winner are updated.
        2. `claimPrize` function can only be called by the winner after the betting 
           period has ended. It transfers the entire balance of the contract to the winner.
    */

    uint256 highestDeposit;
    uint256 endTime;
    address winner;

    function bet() public payable {
        if (msg.value > highestDeposit) {
            highestDeposit = msg.value;
            endTime = block.timestamp + 1 hours;
            winner = msg.sender;
        }
    }

    function claimPrize() public {
        require(msg.sender == winner);
        if (block.timestamp > endTime) {
            (bool sent, ) = winner.call{value : address(this).balance}("");
            require(sent, "Failed transaction to send ether.");
        }
    }
}
