//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FootballNft} from '../src/FootballNft.sol';
import {DevOpsTools} from 'lib/foundry-devops/src/DevOpsTools.sol';

contract Interaction is Script{
     string public constant PUG =  "ipfs://bafkreig5ad54jt3vttijkizhar3m3aqsprlo3njfzldbc6x2xcyupfduda";

    function run() external{
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("FootballNft",block.chainid);
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public{
        vm.startBroadcast();
        FootballNft(contractAddress).mint(0x6600D830BaBB1e96A5902Edd2BD960F0c245DB7d,5,PUG);
        vm.stopBroadcast();
    }
 }