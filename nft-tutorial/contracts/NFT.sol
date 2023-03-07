// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Import the OpenZepplin contracts 
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// NFTee is  ERC721 signifies that the contract we are creating imports ERC721 and follows ERC721 contract from openzeppelin

contract NFT is ERC721 {

    constructor() ERC721("NFT", "ITM") {
        //minting the nft to myself
        _mint(msg.sender, 1);
    }
}