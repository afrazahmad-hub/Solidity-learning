pragma solidity ^0.8.0;

interface Q3TokenInterface{
    function transfer(address from, address to, uint256 amount) external returns(bool);
    function mint(uint256 amount) external returns(bool);
    function balance(address add) external returns(uint256);
}

contract myToken is Q3TokenInterface{

    // mapping to hold balance.
    mapping(address => uint256) internal balances;

    function transfer(address from, address to, uint256 amount) external returns(bool){

            // reduce amount from msg.sender, i.e. whp is doing transacton.
            balances[from] = balances[from] - amount;

            //  Increase balance of "to".
            balances[to] = balances[to] + amount;

            //  return results true or false.
            return true;
    }

    function mint(uint256 amount) public returns(bool){
        //  While minting the the balance of owner increse, so we add minted token to msg.sender.
        balances[msg.sender] = balances[msg.sender] + amount;
        return true;
    }

    function balance(address add) public returns(uint256){
        return balances[add] = balances[add]; 
    }
}