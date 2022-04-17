// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

interface parent{
    function setter(string memory _str) external;
}
contract child is parent{
    function setter(string memory _str) public override{
        
    }
}