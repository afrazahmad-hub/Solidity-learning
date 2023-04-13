pragma solidity ^0.8.0;

contract Math{

    uint public result;

    function add(uint a, uint b) public {
        result = a + b;
    }
}

contract Calculator{
    uint public output;

    function addCall(address Math, uint a, uint b) public returns(uint){
        bytes memory data = abi.encodeWithSignature("add(uint, uint)", a,b);
        Math.call(data);
    }

    function addDcal(address Math, uint a, uint b) public returns(uint){
        bytes memory data2 = abi.encodeWithSignature("add(uint, uint)", a,b);
        Math.delegatecall(data2);
    }
}