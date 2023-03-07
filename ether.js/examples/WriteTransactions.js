const ethers = require('ethers')

const INFURA_ID = 'de7fb2b24974e4fa7266895742afde6'
const provider = new ethers.providers.JsonRpcProvider(`https://mainnet.infura.io/v3/${INFURA_ID}`)

//senders account adress 
const sender = '0x61Aca000835cb2cBD9362666fd07f522e44687e4' //onfire

//recipient account adress
const recipient = '0x72666686A71CF3F4Ece71Fbde1589C557353DD68' //test acc

//senders private key 
const privateKey1 = '884b7ccf940119486cf215ebf283e42c60457f58f5e36db92747381e860be4eb'

const wallet = new ethers.Wallet(privateKey1, provider)

const main = async() => {
    
}