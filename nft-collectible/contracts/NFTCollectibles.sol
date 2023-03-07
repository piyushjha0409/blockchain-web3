//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

//importing the modules and libraries
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract NFTCollectible is ERC721Enumerable, Ownable {
    using SafeMath for uint256;
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;


    uint public constant MAX_SUPPLY = 100;
    uint public constant PRICE = 0.01 ether;
    uint public constant MAX_PER_MINT = 5;

    string public baseTokenURI;
    
  constructor(string memory baseURI) ERC721("NFT Collectibles", "NFTC"){
     setBaseURI(baseURI);
  }
   
   //Reserving the NFT
   //only owner of the contract can call it so it only has to pay the gas 
   function reserveNFTs() public onlyOwner {
    uint totalMinted = _tokenIds.current();  //total no of NFTS minted so far
    require(
        totalMinted.add(10) < MAX_SUPPLY, "Not enough NFTS"
    );

    for(uint i=0; i<10; i++){
      _mintSingleNFT();
    }
   }

   function _mintSingleNFT() private {
    uint newTokenID = _tokenIds.current();  
    _safeMint(msg.sender, newTokenID);
    _tokenIds.increment();
   }
  
  //overriding the empty function called _baseURI and make it baseTokenURI
  function _baseURI() internal view virtual override returns(string memory){
    //return the baseTokenURI
    return baseTokenURI;
  }

//only owner function that allows us to change the baseTokenURI even after contract has been deployed
  function setBaseURI(string memory _baseTokenURI) public onlyOwner {
    baseTokenURI = _baseTokenURI;
  }

  //mint NFT function
  function mintNFTs(uint _count) public payable {
    uint totalMinted = _tokenIds.current();
    require(total);
  }
}