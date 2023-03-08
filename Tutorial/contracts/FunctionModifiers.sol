// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Modifiers {

address public owner; //external party will see that owner variable declaration

constructor(){
    owner = msg.sender; //It will refer to the current address of the contract/owner
}
    
modifier onlyOwner(){
    r
}
}