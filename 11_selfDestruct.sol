pragma solidity ^0.8.0;

contract expSelfDestruct{
    address public owner;
    
    event logUint(string, uint);
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    function close() public onlyOwner returns (bool){
            selfdestruct(payable(owner));
            return true;
    }

    // We use receive fall function when we have to, all ether from wallet.
    receive() external payable{
       emit logUint("Balance of receive", msg.value);
    }

    // Otherwise we use fallback.
    fallback() external payable{
        emit logUint("Balanve fallBack", msg.value);
        }
    }

contract caller{

    function doSomething(address contSD) external payable returns(bool success, bytes memory data){
        bytes memory method = abi.encodeWithSignature("dosomething()");
        (success, data) = contSD.call{value: msg.value}(method);
    }
}