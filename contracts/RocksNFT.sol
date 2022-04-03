//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract RocksNFT is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private currentTokenId;
    // uint256 public totalSupply = 5;

    constructor() ERC721("RocksNFT", "ROCK") {
        // _mint(msg.sender, totalSupply);
    }

    function mintTo(address recipient) public returns (uint256) {
        currentTokenId.increment();
        uint256 newItemId = currentTokenId.current();
        _safeMint(recipient, newItemId);
        return newItemId;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://nftstorage.link/ipfs/bafybeig4ar5ve35btwjnc5ur3x4yg4mityn6gdrlpfwxnizxhjpyp7nkwm";
    }
}
