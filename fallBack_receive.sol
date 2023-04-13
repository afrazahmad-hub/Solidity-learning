// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract fallback_receive {
    event log(string message, address _sender, uint _val, bytes _data);

    fallback() external payable{
    emit log( "Fallback", msg.sender, msg.value, msg.data);

    }

    receive() external payable{
    emit log( "Receive", msg.sender, msg.value, "");
    }

    function showBalance() public view returns(uint) {
        return address(this).balance;
    }

}