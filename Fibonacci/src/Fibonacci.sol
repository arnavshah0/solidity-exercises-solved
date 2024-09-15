// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

// Solution: Fibonacci sequence: F(n) = F(n - 1) + F(n - 2)

contract Fibonacci {
    /*
        This exercise assumes you understand what Fibonacci sequence is.
        1. Function `fibonacci` takes a uint256 as argument and returns nth fibonacci number.
        
        Fibonacci sequence are 0,1,1,2,3,5,8,13,....
        
        calling fibonacci(6) would return 8, because the 6th Fibonacci number is 8.
    */

    function fibonacci(uint256 _position) public view returns (uint256) {
        uint256 sum;
        if (_position > 1) {
            sum = fibonacci(_position - 1) + fibonacci(_position - 2);
        }
        else if (_position == 1) {
            return 1;
        } else if (_position == 0) {
            return 0;
        }
        return sum;
    }
}
