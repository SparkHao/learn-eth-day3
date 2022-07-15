// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract DynamicString {
    string public name = "Spark";

    function getLength() public view returns(uint){
        // return name.length;
        return bytes(name).length;
    }

    function changeName() public view returns(bytes1) {
        return bytes(name)[0];
    }

    function getName() public view returns(bytes memory){
        return bytes(name);
    }

    function changeName2() public {
        bytes(name)[0] = 'L';
    }

    function changeName3() public view returns(string memory){
        bytes memory a = bytes(name);
        a[0] = 'L';
        return string(a);
    }
}