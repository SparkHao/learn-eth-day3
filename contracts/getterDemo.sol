pragma solidity ^0.8.9;

contract GetterDemo {
    uint public num = 100;

    mapping(uint => string) public map;

    function getNum() external view returns(uint) {
        return num;
    }

    function testNum() public view returns(uint){
        return this.num();
    }

    function initMap() public {
        map[1] = "Spark";
    }

    mapping(uint => mapping(uint => mapping(uint => string))) public mulMap;

    function initMulMap() public {
        mulMap[0][1][2] = "Spark";
    }

}