// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract mathBalance{
    uint8 public balance;

    constructor(){}


    function decrease(uint8) public{
        balance --;
    }
    
    function increase(uint8) public{
        balance ++;
    }

}
