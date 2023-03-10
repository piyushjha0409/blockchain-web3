// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// payable means the function can recieve as the function call 

contract SendEther {
    //this is the method 1
    function sendEth(address payable _to) public payable {
         //Just forward the eth recieced to this payable function to the given address
         uint amountToBeSend = msg.value;

         //call function returns the bool value 
         (bool success, bytes memory data) = _to.call{value: msg.value}("");
         require(success == true,  "Failed to send the eth");
    }

    //this is the method 2
    function sendEth2(address payable _person, uint amount) public {
        
        //sending the amount of eth to the _persons address
        _person.transfer(amount);
    }

   //function of getting the balance of the account 
   function getBalance() public view returns(uint) {
      return address(this).balance;
   }
}