// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract AddressDemo {
    address public account = 0xCB257126bf725105D9f194113FF8B08c76E9d4E6;


    address contractAddress = 0x5FbDB2315678afecb367f032d93F642f64180aa3;
    //1159760110923101400754658616791065309347561723110
    function changeIt() public view returns(uint160) {
        return uint160(account);
    }

    function changeIt2() public pure returns(address) {
        return address(1159760110923101400754658616791065309347561723110);
    }

    function check1() public view returns(bool) {
        return account > contractAddress;
    }
}