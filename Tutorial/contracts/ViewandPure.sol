//SPDX-Liscense-Identifier
pragma solidity ^0.8.10;

// View : This will not update the state of the value
// Pure : This will not update the state of the value but not read it as well
contract ViewandPure {
 
 //Declare the state variable
 uint public x = 1;

 //Promise not to modify the state
 function addTodo(uint y) public view returns (uint){
     return x + y;
 }

 // Promise not to modify or read the state of the value
 function add(uint i, uint j) public pure returns (uint) {
    return i + j;
 }
}