// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract FixToDynamic{
    bytes5 name = 0x537061726b;

    function fixBytesToDynamicBytes() public view returns(bytes memory) {
        // return bytes(name);
        bytes memory newName = new bytes(name.length);

        for (uint i =0; i < name.length; i++){
            newName[i] = name[i];
        }
        return newName;
    }
}