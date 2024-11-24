// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {console} from "forge-std/console.sol";

contract ExampleSum {
    uint256 public sum;

    constructor(uint256 x, uint256 y) {
        sum = add(x, y);
    }

    function add(uint256 x, uint256 y) private pure returns (uint256){
        return x + y;
    }
}