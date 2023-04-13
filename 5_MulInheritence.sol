pragma solidity ^0.8.0;

contract Human{
    int internal age;

    event logString(string);

    function doSomething() virtual public {
        emit logString("Human Constructor");
    }
   
}

contract Student is Human{
  function doSomething() virtual override public {
        emit logString("Student Constructor");
    }
}

contract Moniter is Student{
  function doSomething() override public {
        emit logString("Monitor Constructor");
    }
}

contract Teacher is Human{
  function doSomething() override public {
        emit logString("Teacher Constructor");
    }
}
contract Client{
    
    function doSomeWork() public{
        Human objHuman = new Human();
        Student objStudent = new Student();
        Teacher objTeacher = new Teacher();
        Moniter objMonitar = new Moniter();
        objHuman.doSomething();
        objStudent.doSomething();
        objTeacher.doSomething();
        objMonitar.doSomething();
        return objHuman.doSomething();

    }
}
