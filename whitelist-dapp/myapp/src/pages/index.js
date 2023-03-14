import Head from 'next/head'
import Web3Modal from "web3modal"
import { providers, Contract } from 'ethers'
import { useState, useRef, useEffect } from 'react'
import { Inter } from 'next/font/google'
import styles from '@/styles/Home.module.css'
import { WHITELIST_CONTRACT_ADDRESS, abi } from "../constants";


export default function Home() {
  // walletConnected keep track of whether the user's wallet is connected or not
  const [walletConnected, setWalletConnected] = useState(false);

  //joinedWhiteList will keep track of the wether the current wallet address has joined the whiteList or not
  const [joinedWhiteList, setJoinedWhiteList] = useState(false);

  //for loading 
  const [loading, setLoading] = useState(false);

  //numberOfWhiteListed tracks the number addresses whitelisted
  const [numberOfWhiteListed, setNumberOfWhiteListed] = useState(0)
  return (
    <>
      
    </>
  )
}
