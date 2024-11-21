// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Test} from "forge-std/Test.sol";
import {valueTypes} from "../src/valueTypes.sol";

contract valueTypesTest is Test {
    valueTypes public example;

    function setUp() public {
        example = new valueTypes(valueTypes.Pick.Up);
    }

    function testvalueTypes() public {}
}