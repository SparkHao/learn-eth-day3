# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
GAS_REPORT=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```


可拿多个钱包地址 
const [owner, addr1, addr2] = await ethers.getSigners();
钱包地址通过hardhat.config.js配置  运行时--network xxx 指定使用网络配置

运行js的测试案例,也可用remix编辑器运行
npx hardhat run scripts/mappingdemo.js

调用合约方法时必须加await标识符
调用合约方法时可用{value: 1}传入转账金额,合约方法必须是payable
如：
```code
await lock.transfer2(addr1.address, {value: 3});

function transfer2(address payable addr) payable public {
    addr.transfer(msg.value);
}
```
