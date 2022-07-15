// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract TwoArray {
    //can't change array
    // uint[2][3] grade = [[1,2],[3,4],[5,6]];
    //can change array
    uint[][] grade = [[1,2],[3,4],[5,6]];

    function getOneLength() public view returns(uint) {
        return grade.length;
    }

    function getTwoLength() public view returns(uint) {
        return grade[0].length;
    }

    //can't change array
    //function getContent() public view returns(uint[2][3] memory) {
    function getContent() public view returns(uint[][] memory) {
        return grade;
    }

    function add() public view returns(uint) {
        uint sum = 0;

        for(uint i = 0; i < grade.length; i++ ) {
            for(uint j = 0; j < grade[i].length; j++) {
                sum += grade[i][j];
            }
        }

        return sum;
    }
}