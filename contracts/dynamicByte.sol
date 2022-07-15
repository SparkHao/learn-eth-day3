// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract DynamicByte {
    bytes public name = new bytes(2);

    function InitName() public {
        name[0] = 0x7a;
        name[1] = 0x68;
    }

    function getLength() public view returns(uint) {
        return name.length;
    }

    function changeName() public {
        name[0] = 0x88;
    }

    function changeLength() public {
        name.push(0x99);
    }
}