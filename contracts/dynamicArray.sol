// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract DynamicArray {
    uint[] grade = [1,2,3,4,5];

    function getContent() public view returns(uint[] memory) {
        return grade;
    }

    function getLength() public view returns(uint) {
        return grade.length;
    }

    function changeContent() public {
        grade[0] = 100;
        grade[1] = 200;
    }

    function add() public view returns(uint) {
        uint sum = 0;
        for(uint i = 0; i < grade.length; i++) {
            sum += grade[i];
        }
        return sum;
    }

    // this version array length is read_only
    // function changeLength() public {
    //     grade.length += 1;
    // }

    function pushValue() public {
        grade.push(6);
    }
}