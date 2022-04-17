// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract demo{
    uint[] public arr;
    function pushElement(uint item) public{
        arr.push(item);
    }
    function popElement()public {
        arr.pop();
    }
    function len()public view returns(uint){
        return arr.length;
    }
}