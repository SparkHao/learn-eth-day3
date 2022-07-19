// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract PayableDemo {
    
    // address public account = 0x49791B260c855be81051A9063f4bb2423ba1743E;
    // address public contractAccount = 0x5FbDB2315678afecb367f032d93F642f64180aa3;


    constructor() payable {
        console.log("constructor");
        console.log(address(this).balance);
    }

    function pay() payable public {
        
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function getBalance2(address addr) public view returns(uint) {
        // address a = 0x49791B260c855be81051A9063f4bb2423ba1743E;
        return addr.balance;
    }

    function transfer(address addr, uint amount) payable public {
        // address account = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
        console.log(msg.value);
        console.log(address(this).balance);
        payable(addr).transfer(amount);
        console.log(address(addr).balance);
        console.log(address(this).balance);
    }

    function transfer2(address payable addr) payable public {
        console.log(msg.value);
        console.log(address(this).balance);
        addr.transfer(msg.value);
        console.log(address(addr).balance);
        console.log(address(this).balance);
    }

    // function withdraw() public {
    //     // Uncomment this line to print a log in your terminal
    //     // console.log("Unlock time is %o and block timestamp is %o", unlockTime, block.timestamp);

    //     emit Withdrawal(address(this).balance);

    //     payable(owner).transfer(address(this).balance);
    // }
}