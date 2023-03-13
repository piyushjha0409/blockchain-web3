// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract X {
 
string public name;

 //You will need to provide a string argument when deploying to the contract 

constructor(string memory _name){
    name = _name; //assigning the value to the name
}


}