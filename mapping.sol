// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract a6{
    mapping(uint=>string) public student;

    function input(uint roll,string memory name) public{
        student[roll] = name;
    }
}