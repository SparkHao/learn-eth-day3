require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    test: {
      url: "https://http-testnet.hecochain.com/",
      accounts: ["1111111111111111111111111111111111111111111111111111111111111111"]
    },
    local: {
      url: "HTTP://127.0.0.1:8545",
      // accounts: ["2d99ce536bb2b2aaa77ecb7487080cc7d1a1d0014cbcf3521eaab966d6bdc815"],
    }
  }
};
