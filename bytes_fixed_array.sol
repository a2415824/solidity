// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract demo{
    bytes1 public b1;
    bytes2 public b2;
    bytes public str = "abc";

    function setter() public{
        b1 = "a";
        b2 = "b";
    }
    function pushEle(bytes1 st) public{
        bytes1 a = st;
        str.push(a);
    }
    function getEle(uint index) public view returns(bytes1){
        return str[index];
    }
    function getLen() public view returns(uint){
        return str.length;
    }
}