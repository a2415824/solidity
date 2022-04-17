// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;


contract Test {
    int public a;

    constructor(int b){
        a = b;
    }
    function incre(int a1)public{
        a+=a1;
    }
    function decr(int a2)public{
        a-=a2;
    }
    function bal()public view returns(int){
        return a;
    }
}