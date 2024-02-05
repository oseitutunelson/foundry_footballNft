//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

/**
 * @title Football Iconic Moments
 * @author Owusu Nelson Osei Tutu
 * @notice An nft collection of footballs iconic moments 100% on ipfs
 */

import {ERC721URIStorage,ERC721} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract FootballNft is ERC721URIStorage,Ownable{
   constructor(address initialOwner) ERC721('Football Iconic Moments','FIM') Ownable(initialOwner){}

   function mint(address _to,uint256 tokenId,string calldata _uri) external onlyOwner{
     _mint(_to,tokenId);
     _setTokenURI(tokenId,_uri);
   }
}