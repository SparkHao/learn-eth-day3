// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() {
  const currentTimestampInSeconds = Math.round(Date.now() / 1000);
  const ONE_YEAR_IN_SECS = 365 * 24 * 60 * 60;
  const unlockTime = currentTimestampInSeconds + ONE_YEAR_IN_SECS;

  const lockedAmount = hre.ethers.utils.parseEther("30");

  const [owner, addr1] = await ethers.getSigners();

  const Lock = await hre.ethers.getContractFactory("PayableDemo", owner);
  const lock = await Lock.deploy({ value: lockedAmount });

  await lock.deployed();

  console.log("Lock with 1 ETH deployed to:", lock.address);
  // console.log("1: ", await lock.pay());

  console.log("balance: ", await lock.getBalance());
  console.log("balance2: ", await lock.getBalance2(addr1.address));
  await lock.transfer(addr1.address, 2);
  console.log("-------------------------------");
  console.log("balance: ", await lock.getBalance());
  console.log("balance2: ", await lock.getBalance2(addr1.address));

  await lock.transfer2(addr1.address, {value: 3});
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
