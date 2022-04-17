// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract a5{
    function sum(int a ,int b)public pure returns(int){
        return a+b;
    }
    function sum(int a,int b,int c)public pure returns(int){
        return a+b+c;
    }
}