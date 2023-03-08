// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Modifiers {

address public owner; //external party will see that owner variable declaration

constructor(){
    owner = msg.sender; //It will refer to the current address of the contract/owner
}
    
modifier onlyOwner(){
    require(msg.sender == owner, "You are not the owner");
    //first will check the condition then it will run the rest of the code
    _; //this is the modification
}

//creating a function and apply the onlyOwner modifier on it 
function changeOwner(address _newOwner) public onlyOwner {
    // We will only reach this point if the modifier succeeds with its checks
    // so the caller of this transaction must be the current owner
    owner = _newOwner;
}
}