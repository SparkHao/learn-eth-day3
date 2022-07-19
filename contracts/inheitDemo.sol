// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract father {
    uint public money = 10000;

    function dahan() public view returns(string memory){
        return "dahan";
    }
}

contract son is father {
    function getMoney() public view returns(uint) {
        return money;
    }

    function test() public view returns(string memory) {
        return dahan();
    }
}