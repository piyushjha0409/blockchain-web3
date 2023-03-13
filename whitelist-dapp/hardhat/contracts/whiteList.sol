//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract whiteList {
    
    //declare the address
    uint8 public maxWhiteListAddresses;

    //mapping the whiltList address , if an address is white listed then it would be set it to true and its default is false;
    mapping(address => bool) public whiteListedAddresses; 

    //numWhiteListedAddress is the variable used for keeping the track of the whitelisted address
    uint8 public numWhiteListedAddress;

    // setting the max number of the whitelisted addresses user will put at the time of the deployment
    constructor(uint8 _maxWhiteListedAddresses) {
        _maxWhiteListedAddresses = maxWhiteListAddresses;
    }

    //function for adding the address to the whitelist
    function addToWhiteList() public {
        //check if the address is already been whitelisted or not
        require(!whiteListedAddresses[msg.sender], "Sender has already been white listed!");

        //check if the numAddressWhiteListed < maxWhiteListedAddress
        require(numWhiteListedAddress < maxWhiteListAddresses, "More address could not be added!");

        //Add the white listed address wich is called the function to the whitelisted array
        whiteListedAddresses[msg.sender] = true;

        //Increase the number of the whitelisted address
        numWhiteListedAddress += 1;

    }

}