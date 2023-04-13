//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

    // struct can be either initialized inside contract or outside contract.
    struct family {
        string father;
        string brother;
        uint total;
    }

    contract getStructure{

        family public newFamily0 = family("abv", "kjl", 12);

        family public f1;

        // constructor to set initial values of the contract
        constructor (string memory _father, string memory _brothe, uint _total){
            f1.father = _father;
            f1.brother = _brothe;
            f1.total = _total;
            
        }

        // Function to change value of struct.
        function changeStruct(string memory _father, string memory _brother, uint _total) public {
            
            // put new value of struct
            family memory newFamily1 = family({
                father: _father,
                brother: _brother,
                total: _total

            });

            // change the value of the f1
            f1 = newFamily1;
        }

    }