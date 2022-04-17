// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract d1{
    address payable user = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

    function payEther()payable public{

    }
    function checkBalance() view public returns(uint){
        return address(this).balance;
    }
    function payEtherToAccount()public{
        user.transfer(10 ether);
    }
}