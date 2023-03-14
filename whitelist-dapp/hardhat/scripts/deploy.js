const {ethers} = require("hardhat");

async function main (){
 
const whiteListContract = await ethers.getContractFactory("whiteList")

//here we deploy the contract 
const deployedWhitelistContract = await whiteListContract.deploy(20); //20 is the max contracts that can be added

//wait for it to finish  deploying 
await deployedWhitelistContract.deployed();

//print the address of the contract after deploying the contract
console.log("Deployed contract address: ", deployedWhitelistContract.address);
}

main().then(() =>process.exit(0)).catch((err)=>{
    console.error(err)
    process.exit(1)
});


