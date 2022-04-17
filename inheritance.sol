// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract parent{
     string public str;
     address public manager;

     constructor(){
         str = "hi";
         manager = msg.sender;
     }
     function setter(string memory _str)public{
         str = _str;
     }
}
contract child is parent{
    uint public x;
}