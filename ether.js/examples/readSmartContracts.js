const {ethers} = require('ethers')

const INFURA_ID = '5de7fb2b24974e4fa7266895742afde6'
const provider = new ethers.providers.JsonRpcProvider(`https://mainnet.infura.io/v3/${INFURA_ID}`)



const ERC20_ABI = [
    "function name() view returns (string)",
    "function symbol() view returns (string)",
    "function totalSupply() view returns (uint256)",
    "function balanceOf(address) view returns (uint)"
]

const address = "0x6B175474E89094C44Da98b954EedeAC495271d0F"

const contract = new ethers.Contract(address, ERC20_ABI, provider)

const main = async () => {
const name = await contract.name()
console.log(name)
const symbol = await contract.symbol()
console.log(symbol) 
const totalSupply = await contract.totalSupply()
console.log(totalSupply)
const balance = await contract.balanceOf('0x600c41aab40953477e1d5fd2c9469d17f165f030')
console.log(ethers.utils.formatEther(balance))
}

main()