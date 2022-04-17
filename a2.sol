// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract vote_power{
    
    function check(int i)public pure returns(bool){
        bool value = true;
        if(i>0){
            value = true;
            return value;
        }
        value = false;
        return value;
    }
}
