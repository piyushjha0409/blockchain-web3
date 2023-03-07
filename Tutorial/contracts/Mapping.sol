//SPDX-Liscense-Identifier: MIT

pragma solidity ^0.8.10;

contract Mapping{

  mapping(address => uint) public myMap;

// * The Keyword public makes variables access from  outside the contract
  function get(address _addr) public view returns(uint){
    //Mapping always returns a value
    // If the value was never set then it will return the default value which is 0
    return myMap[_addr];
  }

  function set(address _addr, uint _i) public{
    //Update the value at this address 
    myMap[_addr] = _i;
  }

  function remove(address _addr) public{
    //Reset the value to the default value
     delete myMap[_addr];
  }

  //Nested Mappings
  mapping(address => mapping(uint => bool)) public nestedMap;

  function  get(address _addr, uint _o) public view returns(bool){
       //The default value of the bool type is false
       return nestedMap[_addr][_o];
  }
  
  function set(address _addr1, uint _i, bool _boo) public {
    nestedMap[_addr1][_i] = _boo;
  }

  function remove(address _addr1, uint _i) public{
      delete nestedMap[_addr1][_i];
  }
  
}