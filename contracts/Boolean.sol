// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract BooleanTest{
    bool _a;
    int num1 = 100;
    int num2 = 200;

    function getBool() public view returns(bool){
        return _a;
    }

    function getBool2() public view returns(bool) {
        return !_a;
    }

    function equal() public view returns(bool) {
        return num1 == num2;
    }
}