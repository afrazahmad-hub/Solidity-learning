//SPDX-License-Identifier: Unlicense
pragma solidity ^0.5.0;

contract bytesAyyay{
    
    // Fixed size array.
    // 1 byte = 8 bits
    bytes3  public b3; // array of 3 bytes
    bytes2  public b2; // array of 3 bytes

    function setter()  public {
        b3 = "abc"; //0x616263, there three array index in this buyte index0 61 and so on.
        b2 = "ab"; //0x6162
        b2 = "a"; // 0x6100 remaining data will be filled by 00

        // Even we can not change the index of bytes i.e. immutable
        //b3[0] = "d";  // TypeError: Single bytes in fixed bytes arrays cannot be modified.
    }
   
}

contract bytesDynamicAyyay {
    
    // Fixed size array.
    
    bytes3  public b3 = "abc"; 
   

    function getElement(uint ind)public view returns(bytes1 ){

        return b3[ind]; // if we pass 1, we will get 0x61
       
    }

    function length() view public returns(uint8){
        return b3.length; // 3 
    }
   
}