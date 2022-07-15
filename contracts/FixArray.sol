// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract FixArray {
    // uint[5] arr;
    uint[5] arr = [1,2,3,4,5];

    function init() public {
        arr[0] = 100;
        arr[1] = 200;
    }

    function getArrayContent() public view returns(uint[5] memory) {
        return arr;
    }

    function getGrade() public view returns(uint) {
        uint grade = 0;
        for(uint i = 0; i < arr.length; i++) {
            grade += arr[i];
        }
        return grade;
    }

    function getLength() public view returns(uint) {
        return arr.length;
    } 

    //can't push element
    // function push() public {
    //     arr.push(6);
    // }
}