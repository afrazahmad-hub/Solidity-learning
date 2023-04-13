pragma solidity ^0.8.0;

contract MyToken{
    address private owner;
    mapping(address => uint256) internal balances;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(owner == msg.sender, "Only owner can call");
        _;
    }

    function addTokens(uint256 tokens) public {
        balances[msg.sender] = balances[msg.sender] + tokens;
    }

    function showTokens(address participantts) public view onlyOwner returns(uint256){
        return balances[participantts];
    }

    function addFunds(uint256 funds) public onlyOwner{
        addTokens(funds);
    }
}