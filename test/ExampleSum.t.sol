// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {ExampleSum} from "../src/ExampleSum.sol";

contract ExampleSumTest is Test {
    ExampleSum public exampleSum;


    function setUp() public {
        exampleSum = new ExampleSum(2, 2);
    }

    function testExampleSum() public view {
        assertEq(exampleSum.sum(), 4);
    }

}