pragma solidity ^0.8.0;

contract call_withQ3Token{

    address public owner;

    address public token;
    constructor (address Q3Token) {

        owner = msg.sender;

        token = Q3Token;
        
    }

    function payFee(uint256 amount) public returns(bool success){
        bytes memory method = abi.encodeWithSignature(
            "transfer(address, address, uint256)", 
            msg.sender, owner, amount);

            (success,) = token.call(method);
            require(success, "Failed !"); 
    }

    function paySalary(address teacher, uint256 amount) public returns(bool success){
        bytes memory method2 = abi.encodeWithSignature(
        "transfer(address, address, uint256)"
        , owner, teacher, amount);

        (success, ) = token.call(method2);
        require(success, "Counldnot pay fee");
    }
}