// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
uint256 private s_tokenCounter;
    constructor(string memory _name, string memory _symbol) ERC721("Dogie", "DOG") {
     s_tokenCounter = 0;
    }

    function mintNft(address to) external {
        _safeMint(to, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return string(abi.encodePacked("https://token.com/", tokenId));
    }

    function transfer(address to, uint256 tokenId) external {
        safeTransferFrom(msg.sender, to, tokenId);
    }
}