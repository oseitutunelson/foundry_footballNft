//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FootballNft} from '../src/FootballNft.sol';

contract DeployNft is Script{
    function run() external returns (FootballNft){
        vm.startBroadcast();
        FootballNft footballNft = new FootballNft(0x6600D830BaBB1e96A5902Edd2BD960F0c245DB7d);
        vm.stopBroadcast();
        return footballNft;
    }
}