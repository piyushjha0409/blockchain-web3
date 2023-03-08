// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Events {

    //declare an event which logs an address and string 
    event TestCalled(address sender, string message);

    function test() public {
        // Log on event 
        emit TestCalled(msg.sender, "HI this is the message");
    }
}