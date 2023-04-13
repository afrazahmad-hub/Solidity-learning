pragma solidity ^0.8.0;

contract test{

    uint public result;
    function add(uint8 a, uint8 b) public view returns(uint8){
        
        // We use require to check certion conditions,
        // If condition is true, then function will execute further, but if fail,
        // the execuation will be reverted to initial state and GAS fee will be return.
        require(a > 0, "a should not be zero");

        uint8 result = a + b;

        // We use assert to aert to check the ecpected values,
        //  USually, it use to for testing purpose,
        // If the condition fails, transaction revert and gas fee will be consumed.
        //  If condition pass, the execuation will complete and,
        //  after completion the eexecuation the , we will be ejected from the function.
        assert(result <= uint8);

        // We use revert to get out of function.

    }
}