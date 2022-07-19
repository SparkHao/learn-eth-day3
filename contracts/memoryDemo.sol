pragma solidity ^0.8.9;

contract memoryDemo {

    uint public index = 6;

    function add(uint num) public view returns(uint) {
        num += 1;
        return num;
    }

    function test() public view returns(uint, uint) {
        uint i = 2;
        uint j = add(i);
        return (i,j);
    }

    function changeIndex() public view returns(uint) {
        return add(index);
    }

    function changeIndex2() public returns(uint) {
        index += 1;
        return index;
    }
}