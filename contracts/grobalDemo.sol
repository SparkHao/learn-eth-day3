pragma solidity ^0.8.9;

contract Grobal {
    function getGrobal() public view returns(address) {
        return msg.sender;
    }

    function getGrobal2() public view returns(uint) {
        return block.difficulty;
    }

    function getGrobal3() public view returns(uint) {
        return block.number;
    }

    function getGrobal4() public view returns(address) {
        return block.coinbase;
    }

    function msg1() public view returns(bytes memory) {
        return msg.data;
    }

    // function msg2() public view returns(uint) {
    //     return msg.gasleft;
    // }

    function tx1() public view returns(uint) {
        return tx.gasprice;
    }
}