// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const { ethers } = require("hardhat");
const hre = require("hardhat");

async function main() {
  const currentTimestampInSeconds = Math.round(Date.now() / 1000);
  const ONE_YEAR_IN_SECS = 365 * 24 * 60 * 60;
  const unlockTime = currentTimestampInSeconds + ONE_YEAR_IN_SECS;

  const signers = await ethers.getSigners();

  //可拿多个钱包地址 
  const [owner, addr1, addr2] = await ethers.getSigners();

  const lockedAmount = hre.ethers.utils.parseEther("1");
  // const wallet = hre.ethers.wallet(priKey);
  const Lock = await hre.ethers.getContractFactory("MappingDemo", signers[1]);
  const lock = await Lock.deploy();


  await lock.deployed();

  
  console.log("Lock with 1 ETH deployed to:", lock.address);
  console.log("register: ", await lock.register("Spark"));
  let id = await lock.getIdByAddress("0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266");
  console.log("getId: ", id);
  console.log("getName: ", await lock.getNameById(id));

  console.log("register: ", await lock.register("Spark2"));


}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
