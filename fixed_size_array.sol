// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract demo{
    uint[10] public a;
    function pushele(uint item,uint index)public{
        a[index]=item;
    }
    function popele(uint index)public{
        a[index] = 0;
    }
    function lengt()public view returns(uint){
        return a.length;
    }
} 