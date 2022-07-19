// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract MappingDemo {
    mapping(address => uint) idmapping;
    mapping(uint => string) namemapping;

    uint sum = 0;


    //modifier limit function == require
    function register(string memory name) public control{
        // require(idmapping[msg.sender] ==0 );
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

    modifier control{
        require(idmapping[msg.sender] ==0 );
        _;
    }
}