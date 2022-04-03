import {ethers} from "hardhat";

async function main() {
  const ERC721 = await ethers.getContractFactory("RocksNFT");
  const erc721 = await ERC721.deploy();

  await erc721.deployed();

  console.log("RocksNFT deployed to:", erc721.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
