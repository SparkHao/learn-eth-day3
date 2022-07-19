pragma solidity ^0.8.9;

contract modifierDemo {
    address public owner;

    uint public num = 0;

    constructor(){
        owner = msg.sender;
    }

    modifier OnlyOwner{
        require(msg.sender == owner);
        _;
    }

    function changeIt(uint _num) public OnlyOwner{
        num = _num;
    }
}