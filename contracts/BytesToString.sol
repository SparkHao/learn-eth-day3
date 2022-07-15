// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract BytesToString {
    bytes name = new bytes(2);

    function init() public {
        name[0] = 0x7a;
        name[1] = 0x68;
    }

    function bytesToString() public view returns(string memory) {
        return string(name);
    }
}