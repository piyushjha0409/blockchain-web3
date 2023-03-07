const {ethers} = require('ethers')

//creating the infura id 
const INFURA_ID = '5de7fb2b24974e4fa7266895742afde6'
const provider = new ethers.providers.JsonRpcProvider(`https://goerli.infura.io/v3/${INFURA_ID}`)
const address = '0x72666686A71CF3F4Ece71Fbde1589C557353DD68'

const main = async ()=>{
    const balance = await provider.getBalance(address)
    console.log(`\n ETH Balance of ${address} --> ${ethers.utils.formatEther(balance)} ETH\n`)
}

main()
