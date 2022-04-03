import {task} from "hardhat/config";
import "@nomiclabs/hardhat-ethers";

interface Args {
  address: string;
}

task("mint")
  .addParam("address", "Mint to")
  .setAction(async (args: Args, hre) => {
    const contract = await hre.ethers.getContractAt("RocksNFT", process.env.CONTRACT_ADDRESS!!);

    const transactionResponse = await contract.mintTo(args.address, {
      gasLimit: 500_000,
    });
    console.log(`Transaction Hash: ${transactionResponse.hash}`);
  });

export {};
