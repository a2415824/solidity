// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract a1{
    function get() public view returns(
        uint gasLimt,
        uint blockNumber,
        uint blockTimestamp,
        address caller
    ){
        return(block.gaslimit,block.number,block.timestamp,msg.sender);
    }
}