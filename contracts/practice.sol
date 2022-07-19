pragma solidity ^0.8.9;

contract zhongchou {
    struct funder {
        address funderAddress;
        uint toMoney;
    }

    struct needer {
        address neederAddress;
        uint goal;
        uint amount;
        uint funderAccount;
        mapping(uint => funder) map;
    }

    uint neederId;
    mapping(uint => needer) neederMap;

    function newNeeder(address _neederAddress, uint _goal) public returns(address, uint){
        needer storage newNeederA = neederMap[neederId++];
        newNeederA.neederAddress = _neederAddress;
        newNeederA.goal = _goal;
        return (newNeederA.neederAddress, newNeederA.goal);
    }

    function contribute(address _address,uint _neederId) public payable returns(address, uint, uint, uint){
        needer storage _needer = neederMap[_neederId];
        _needer.amount += msg.value;
        _needer.funderAccount++;
        _needer.map[_needer.funderAccount] = funder(_address, msg.value);
        return (_address, _neederId, _needer.amount, _needer.funderAccount);
    }

    function isComplete(uint _neederId) public payable{
        needer storage _needer = neederMap[_neederId];
        if(_needer.amount > _needer.goal) {
            payable(_needer.neederAddress).transfer(_needer.amount);
        }
    }

    function getParams(uint _neederId) public view returns(uint, uint, uint) {
        needer storage _needer = neederMap[_neederId];
        return (_needer.amount, _needer.goal, _needer.funderAccount);
    }
}