pragma solidity ^0.8.0;

interface Q3TokenInterface{
    function transfer(address from, address to, uint256 amount) external returns(bool);
    function mint(uint256 amount) external returns(bool);
    function balance(address add) external returns(uint256);
}

contract schoolpayrol{
    // receiving Q3TokenInterface type address.
    Q3TokenInterface public token;
    // declaring owner.
    address public owner;
    
    constructor(Q3TokenInterface Q3Tkn){
        owner = msg.sender;
        token = Q3Tkn;
    }

    function payFee(uint256 amount) public{
        token.transfer(msg.sender, owner, amount );
    }

    function paySalary(address teacher, uint256 amount) public{
        token.transfer(owner, teacher, amount);
    }
}