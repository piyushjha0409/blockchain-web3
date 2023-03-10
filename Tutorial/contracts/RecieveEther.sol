// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ReceiveEther {


   //Function to receive ether msg.data must be an empty
    receive() external payable {}

    //Function to fallback when msg.data is empty
    
}