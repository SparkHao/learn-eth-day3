// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Bytes32ToString{
    bytes2 name = 0x7a68;
    function changeIt() public view returns(string memory) {
        // return string(name);
    }

    function bytes32ToString(bytes2 _newname) public pure returns(string memory) {
        bytes memory newName = new bytes(_newname.length);
        // console.log(newName.length);
        for(uint i = 0; i< _newname.length; i++) {
            newName[i] = _newname[i];
        }

        return string(newName);
    }
}