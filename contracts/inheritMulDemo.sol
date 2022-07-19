pragma solidity ^0.8.9;

//不可有相同的属性、function，会编译失败
contract father {
    uint money = 10000;

    function getName() public view returns(string memory) {
        return "Daddy";
    }
}

contract mother {
    // uint money = 9999;
    uint public height = 160;
    //
    // function getName() public view returns(string memory) {
    //     return "Mammi";
    // }
}

contract son is father, mother {

    // uint money = 9000;

    function getMoney() public view returns(uint) {
        return money;
    }

}