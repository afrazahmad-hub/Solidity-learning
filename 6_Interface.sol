pragma solidity ^0.8.0;

interface Human{
    // int internal age;

    event logString(string);

    function doSomething(string memory name) external virtual;

    function doSomething2() external virtual returns(string memory);
}

contract Student is Human{
       string private name;
    // Constructor () public {
    //     emit logString("Student");
    // }
    function doSomething(string memory _name) public override{
        name = _name;
    }

    function doSomething2() public override returns(string memory){
        return name;
    }
}
contract Client{
    
    function doSomeWork() public returns(string memory){
       Student objStu = new Student();
       objStu.doSomething("Afraz Ahmad");
       return objStu.doSomething2();

    }
}
