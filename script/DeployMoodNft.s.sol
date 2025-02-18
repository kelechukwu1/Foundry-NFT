// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";

contract DeployMoodNft is Script {
    function run() external {
        vm.startBroadcast();
        new MoodNft("sadSvgImageURI", "happySvgImageURI");
        vm.stopBroadcast();
    }
}
