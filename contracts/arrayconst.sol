// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract ArrayLiterals {
    function getArrayLiterals() public pure returns(uint8[3] memory) {
        return [1, 2, 3];
    }

    function getArrayLiterals2() public pure returns(uint16[3] memory) {
        return [256, 2, 3];
    }

    function add(uint[3] memory grade) public pure returns(uint) {
        uint sum = 0;

        for (uint i = 0; i< grade.length; i++) {
            sum += grade[i];
        }

        return sum;
    }
}