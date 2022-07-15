// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract ChangeFixBytes {
    bytes5 name = 0x537061726b;

    function changeBytes1() public view returns(bytes1) {
        return bytes1(name);
    }

    function changeBytes2() public view returns(bytes2) {
        return bytes2(name);
    }
    
    function changeBytes16() public view returns(bytes16) {
        return bytes16(name);
    }
}