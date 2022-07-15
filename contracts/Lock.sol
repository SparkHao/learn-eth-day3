// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract Lock {
    uint public unlockTime;
    address payable public owner;

    event Withdrawal(uint amount, uint when);

    constructor(uint _unlockTime) payable {
        console.log("constructor");
        console.log(address(this).balance);
        require(
            block.timestamp < _unlockTime,
            "Unlock time should be in the future"
        );

        unlockTime = _unlockTime;
        owner = payable(msg.sender);
        console.log(address(this).balance);
    }

    function withdraw() public {
        // Uncomment this line to print a log in your terminal
        // console.log("Unlock time is %o and block timestamp is %o", unlockTime, block.timestamp);

        // require(block.timestamp >= unlockTime, "You can't withdraw yet");
        require(msg.sender == owner, "You aren't the owner");
        console.log(address(this).balance);
        emit Withdrawal(address(this).balance, block.timestamp);
        // console.log(address(this).balance);
        // owner.transfer(address(this).balance);
        console.log(address(this).balance);
    }
}
