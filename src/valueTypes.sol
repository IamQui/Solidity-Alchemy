// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {console} from "forge-std/console.sol";

contract valueTypes {
    uint8 x; // 0 => 255
    uint256 aMax = type(uint256).max; 
    uint256 aMin = type(uint256).min; 
    /*
    2^256 - 1 => 115792089237316195423570985008687907853269984665640564039457584007913129639935 => 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff =>
    10000000000000000000000000000000000000000000000000000000000000000
    */
    
    int256 bMax = type(int256).max;
    int256 bMin = type(int256).min;
    /*
    2^255 - 1 =>
    57896044618658097711785492504343953926634992332820282019728792003956564819967 =>
    0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF =>
    8000000000000000000000000000000000000000000000000000000000000000
    */
    int8 y; // -128 => 127

    bool myTruth = true; // undefined defaults to false;

    enum Pick {
        Up,
        Down,
        Left,
        Right
    }

    constructor(Pick choice) {
        if(myTruth){
            console.log("Truth");
        }

        if(choice == Pick.Left){
            console.log("Southpaw");
        }

        if(choice == Pick.Right){
            console.log("Right");
        }

        if(choice == Pick.Up){
            console.log("Up");
        }

        if(choice == Pick.Down){
            console.log("Down");
        }

        console.log(aMax);
        console.log(aMin);
        console.logBytes32(bytes32(aMax));
        console.logBytes32(bytes32(aMin));
        console.logInt(bMax);
        console.logInt(bMin);
    }

}