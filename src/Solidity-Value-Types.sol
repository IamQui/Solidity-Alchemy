// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


contract ValueTypes {
    uint a;
    int b;
    bool c;

    enum d {Up, Down, Left, Right}
    d choice = d.Up;
}