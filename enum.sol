// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract a2{
    enum state{a,b,c}
    state public st;

    constructor(){
        st = state.a;
    }
    function activate()public{
        st = state.b;
    }
    function isactive()public view returns(bool){
        return st == state.b;
    }
}