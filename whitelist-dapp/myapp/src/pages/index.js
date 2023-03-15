import Head from 'next/head'
import Web3Modal from "web3modal"
import { providers, Contract } from 'ethers'
import { useState, useRef, useEffect } from 'react'
import { Inter } from 'next/font/google'
import styles from '@/styles/Home.module.css'
// import { WHITELIST_CONTRACT_ADDRESS, abi } from "../constants";


export default function Home() {
  // walletConnected keep track of whether the user's wallet is connected or not
  const [walletConnected, setWalletConnected] = useState(false);

  //joinedWhiteList will keep track of the wether the current wallet address has joined the whiteList or not
  const [joinedWhiteList, setJoinedWhiteList] = useState(false);

  //for loading 
  const [loading, setLoading] = useState(false);

  //numberOfWhiteListed tracks the number addresses whitelisted
  const [numberOfWhiteListed, setNumberOfWhiteListed] = useState(0);

  //use the reference of the web3 modal (used for connecting the metamask)
  const web3modalRef = useRef();

//we need a signer or the provider 
const getProviderOrSigner = async (needSigner = false) => {  // param: needSigner true if the signer otherwise false

  const provider = await web3modalRef.current.connect();
  const web3Provider = new providers.Web3Provider(provider);

  // If users is not connected to the goerli network, let them know throw and error
  const {chainID} = await web3Provider.getNetwork(provider);

}
  return (
    <>
       <div>
      <Head>
        <title>Whitelist Dapp</title>
        <meta name="description" content="Whitelist-Dapp" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className={styles.main}>
        <div>
          <h1 className={styles.title}>Welcome to Crypto Devs!</h1>
          <div className={styles.description}>
            {/* Using HTML Entities for the apostrophe */}
            It&#39;s an NFT collection for developers in Crypto.
          </div>
          <div className={styles.description}>
            {numberOfWhitelisted} have already joined the Whitelist
          </div>
          {renderButton()}
        </div>
        <div>
          <img className={styles.image} src="./crypto-devs.svg" />
        </div>
      </div>

      <footer className={styles.footer}>
        Made with &#10084; by Crypto Devs
      </footer>
    </div>
    </>
  )
}