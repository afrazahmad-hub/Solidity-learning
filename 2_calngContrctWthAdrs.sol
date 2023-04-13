pragma solidity ^0.8.0;

contract Human{
    int private age;

    function setAge(int _age) public {
        age = _age;
    }

    function getAge() public returns(int){
        return age;
    }
}

contract Client{
    Human public objHuman;

    function setHuman(address add) public{
        objHuman = Human(add);
    }

    function getHuman() public returns(int){
        // objHuman.setAge(50);
        return objHuman.getAge();
    }
}

// 0x0498B7c793D7432Cd9dB27fb02fc9cfdBAfA1Fd3
