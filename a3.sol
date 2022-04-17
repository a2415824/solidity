// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract a5{
    struct per{
        string _fname;
        string _lname;
    }
    per[] public people;
    uint public peopleCount;

    function addperson(string memory _fna,string memory _lna)public{
       people.push(per(_fna,_lna));
       peopleCount++;
    }
}