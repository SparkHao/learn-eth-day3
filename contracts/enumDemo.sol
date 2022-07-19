pragma solidity ^0.8.9;

contract enumDemo {
    enum girl{cangjingkong, wutenglan, jizhemingbu}

    girl theGirl = girl.cangjingkong;

    function getEnum() public view returns(girl){
        return theGirl;
    }

    function firstDay() public returns (string memory) {
        require(theGirl == girl.cangjingkong);
        theGirl = girl.wutenglan;
        return "date with cangjingkong";
    }

    function secondDay() public returns(string memory){
        require(theGirl == girl.wutenglan);
        theGirl = girl.jizhemingbu;
        return "date with wutenglan";
    }

}