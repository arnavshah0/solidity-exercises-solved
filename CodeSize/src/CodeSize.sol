// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

// Solution. Bytecode is static and determined at deployment. I can't programatically increase bytecode in the contract at runtime since state variables are stored in 
// Ethereum's storage and not in the bytecode.
// Each blank function added 10 byes.

contract CodeSize {    
    /**
     * The challenge is to create a contract whose runtime code (bytecode) size is greater than 1kb but less than 4kb
     */

    mapping(address => mapping(address => address)) public addresses0;
    mapping(address => mapping(address => address)) public addresses1;
    mapping(address => mapping(address => address)) public addresses2;
    mapping(address => mapping(address => address)) public addresses3;
    mapping(address => mapping(address => address)) public addresses4;
    mapping(address => mapping(address => address)) public addresses5;
    mapping(address => mapping(address => address)) public addresses6;
    mapping(address => mapping(address => address)) public addresses7;
    mapping(address => mapping(address => address)) public addresses8;
    mapping(address => mapping(address => address)) public addresses9;
    mapping(address => mapping(address => address)) public addresses10;
    mapping(address => mapping(address => address)) public addresses11;
    mapping(address => mapping(address => address)) public addresses12;
    mapping(address => mapping(address => address)) public addresses13;
}
