const { ethers } = require("hardhat");


async function main() {

 const nftContract = await ethers.getContractFactory("NFT");

 //deploying the contract 
 const deployedNFTContract = await nftContract.deploy();

 //waiting for the contract to deploy 
 await deployedNFTContract.deployed();

 //print the address of the deployed contract
 console.log("NFT Contract Address:", deployedNFTContract.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
.then(() => process.exit(0))
.catch((error) => {
  console.error(error);
 process.exit(1);
});
