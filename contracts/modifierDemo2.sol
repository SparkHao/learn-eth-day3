pragma solidity ^0.8.9;

contract modifierDemo2 {
    uint public level = 9;

    string public name;
    uint public dna;

    modifier levelControl(uint neelLevel) {
        require(level >= neelLevel);
        _;
    }
    
    function changeName() public levelControl(2){
        // require(level >= 2);
        name = "Spark";
    }

    function changeDna() public levelControl(10){
        require(level >= 10);
        dna = 999;
    }
}