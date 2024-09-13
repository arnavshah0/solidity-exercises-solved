// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Distribute {
    /*
        This exercise assumes you know how to sending Ether.
        1. This contract has some ether in it, distribute it equally among the
           array of addresses that is passed as argument.
        2. Write your code in the `distributeEther` function.
    */

    // With 10 ether split amongst 3 addresses, each address gets 3 ether and there is 1 ether left over in the initial contract due to floor division.

    constructor() payable {}

    function distributeEther(address[] memory addresses) public {
        uint256 distributionAmount = address(this).balance / addresses.length;
        for (uint i = 0; i < addresses.length; i++) {
            (bool sent, ) = addresses[i].call{value: distributionAmount}("");
            require(sent, "Call to send Ether failed");
        }
    }
}
