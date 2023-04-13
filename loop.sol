//SPDX-License-Identifier: Unlicense
pragma solidity ^0.5.0;

contract loop{

    // array of fixed length 5.
    uint[5] public arr;
    uint public count;

    function whileLoop() public {
        while(count < arr.length){
            arr[count] = count;
            count++;
        }
    }

    function forLoop() public {
        for(uint i = count; i < arr.length; i++){

            arr[count] = count;
            count++;
        }
    }

    function doWhile() public{
        do{
            arr[count] = count;
            count++;
        } while(
            count<arr.length
        );
    }
}