pragma solidity ^0.8.9;

contract destructDemo {
    address owner;

    uint public money = 0;

    constructor() {
        owner = msg.sender;
    }

    function increament() public {
        money += 10;
    }

    function kill() public {
        require(owner == msg.sender);
        selfdestruct(payable(owner));
    }
}