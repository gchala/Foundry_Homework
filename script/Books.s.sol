// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract DeployBooks is Script {
    function run() external {
        vm.startBroadcast();
        new Books("Programming Foundry", "gchala", 100);  // Correct capitalization and values
        vm.stopBroadcast();
    }
}
