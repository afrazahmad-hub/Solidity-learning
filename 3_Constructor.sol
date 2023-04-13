pragma solidity ^0.8.0;

contract Human{
    int private age;

    event logString(string);
    constructor() public {
        age= 90;

        emit logString("Human constructor called");

    }

    function setAge(int _age) public {
        age = _age;
    }

    function getAge() public returns(int){
        return age;
    }
}

contract Client{
    Human public objHuman;
    function doSomeWork() public returns(int){
        objHuman = new Human();
        objHuman.setAge(24);
        return objHuman.getAge();
    }
}
