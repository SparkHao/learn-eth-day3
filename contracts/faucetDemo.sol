pragma solidity ^0.8.9;

contract Faucet {
    function withdraw() public payable {
        // require(amount == 1000000000000000000);
        payable(msg.sender).transfer(1 ether);
    }

    function transferFrom(address to, uint value) public payable returns(uint){
        payable(to).transfer(2 ether);
        return to.balance;
    }

    //用metamask转账时需加这段,否则会报out of gas错误
    receive() external payable {
       
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

}