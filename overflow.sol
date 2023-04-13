//SPDX-License-Identifier: Unlicense
pragma solidity ^0.5.0;

contract overflow{

    // Overflow problem was exist in older versions of solidity
    // When the amount was exceed from the data type, it returns 0.
    // But in newer versions this problem has been removed.
    uint8 public money = 255; 

    function add() public {
        money = money+1; // 0.5.0 return 0, while 0.8.0 return 255
    }
}