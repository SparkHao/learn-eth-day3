pragma solidity ^0.8.9;

contract HelloWorld {
    string MyName = "Spark";


    function getName() public view returns(string memory) {
        return MyName;
    }

    function changeName(string memory _newName) public {
        MyName = _newName;
    }

    function pureTest(string memory _name) pure public returns(string memory){
        return _name;
    }

}