pragma solidity ^0.8.9;

contract memoryDemo {

    uint[] public arr;

    function test(uint[] memory arry) public returns(uint[] memory) {
        arr = arry;
        return arr;
    }

    function test2() public view returns(uint[] memory) {
        return arr;
    }
}