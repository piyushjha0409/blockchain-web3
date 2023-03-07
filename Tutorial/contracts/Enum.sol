//SPDX-Liscense-Identifier: MIT
pragma solidity ^0.8.10;


//enumerated datatypes contains human readable datatypes set of contraints called members.
contract Enum {
 
 enum Status{
    Pending,  //0
    Shipped,  //1
    Accepted, //2
    Rejected, //3
    Canceled  //4
 }

 //Declaring the variable of the type of the status
 Status public helper;

 function get() public view returns(Status){
  return helper;
 }

function set(Status _helper) public {
     helper = _helper;
}

function cancel() public{
    helper = Status.Canceled; //will set helper 4
}

}