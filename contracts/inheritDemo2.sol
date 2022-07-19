pragma solidity ^0.8.9;

contract father {
    //private 不可继承 内部调用
    //默认或public 可继承 都可调用
    //external 编译报错--外部调用时使用,内部调用须this.调用
    //internal 可继承 内部调用、外部不可调用

    //pure 不会读取全局变量、不会修改全局变量
    //constant 在函数中与view相同，在全局变量中，只用于bytes1-bytes32,uint,int,string代表数据不能被修改
    //view 只读取全局变量的直，不修改它，不消耗gas
    //payable 转账的时候必须加的关键字

    uint money = 10000;

    function dahan() public view returns(string memory) {
        return "dahan2";
    }
}

contract externalTest {
    father f = new father();
    function externalTestF() public view returns(string memory) {
        return f.dahan();
    }
}

contract son is father {
    function getMoney() public view returns(uint) {
        return money;
    }

    function test() public view returns(string memory){

        //danhan() external修饰需使用this.dahan()
        return this.dahan();
    }
}