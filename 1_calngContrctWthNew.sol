    // SPDX-License-Identifier: MIT
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
        function doSomeWork() public returns(int){
            objHuman = new Human();
            objHuman.setAge(24);
            return objHuman.getAge();
        }

        function setHuman(address add) public{
            objHuman = Human(add);
        }

        function getHuman() public returns(int){
            objHuman.setAge(50);
            return objHuman.getAge();
        }
    }

    // 0x194146544073844DFdA12790823243f954F1A2D2
    // 0x633dBFB62C1Bd3d5fFf4D7d94E8c2f6f5B479ca1
    // 0xB706b00ef5533D9d8283a3e938FcffafEc0F2866
    // 0xAb78299A888637aD0DFd92A6bF9Faaf79D4075C4

    