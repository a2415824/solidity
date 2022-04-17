// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract d3{
    string[] public v = ["car","bus","bike"];

    function mem() public view{
        string[] memory v1 = v;
        v1[0]="ship";
    }
    function sto() public{
        string[] storage v1 = v;
        v1[0] = "ship";
    }
}