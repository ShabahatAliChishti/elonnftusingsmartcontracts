// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

//NFT - meta description, name, description, image link and attributes


contract ElonNFT is ERC721URIStorage {
   using Counters for Counters.Counter;
   Counters.Counter private _tokenIds; //0
 
   constructor() ERC721("ElonMusk", "ELON") {}
 
   function mintNFT()
       public
       returns (uint256)
       {
           _tokenIds.increment(); //1 
           uint256 newItemId = _tokenIds.current();
           _mint(msg.sender, newItemId); //address of the account, 
           _setTokenURI(newItemId, "https://jsonkeeper.com/b/K8X1"); //1, properties
           console.log("The NFT ID %s has been minted to %s", newItemId, msg.sender);
           return newItemId;
       }
}