// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;
import "hardhat/console.sol";

contract modifierDemo3{
    uint public a = 0;

    modifier mod1 {
        console.log("1a:", a);
        a = 1;
        console.log("2a:", a);
        _;
        console.log("3a:", a);
        a = 2;
        console.log("4a:", a);
    }

    modifier mod2 {
        console.log("1b:", a);
        a = 3;
        console.log("2b:", a);
        _;
        console.log("3b:", a);
        a = 4;
        console.log("4b:", a);
    }

    function test() public mod1 mod2{
        console.log("5a:", a);
        a = 100;
        console.log("6a:", a);
    }
}