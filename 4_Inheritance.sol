pragma solidity ^0.8.0;

contract Human{
    int internal age;

    event logString(string);
    constructor() public {
        emit logString("Human constructor called");
    }

    function setAge(int val) virtual public {
        age = val;
    }

    function getAge() public returns(int){
        return age;
    }
}

contract Student is Human{
    constructor() public{
        emit logString("Student contr");
    }
    function setAge(int _age) override public {
        age = _age;
    }
    function setAgee(int _age, int mul) public {
        age = _age;
    }

   
}
contract Client{
    Human public objStu;
    function doSomeWork() public returns(int){
        objStu = new Student();
        objStu.setAge(24);
        return objStu.getAge();
    }
}
