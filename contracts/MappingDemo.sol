// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract MappingDemo {
    mapping(address => uint) idmapping;
    mapping(uint => string) namemapping;

    uint sum = 0;

    function register(string memory name) public {
        address account = msg.sender;
        sum++;
        idmapping[account] = sum;
        namemapping[sum] = name;

    }

    function getIdByAddress(address addr) public view returns(uint){
        return idmapping[addr];
    }

    function getNameById(uint id) public view returns(string memory){
        return namemapping[id];
    }
}