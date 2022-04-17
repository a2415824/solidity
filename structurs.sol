// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

struct stu{
    uint roll;
    string name;
}

contract a1{
    stu public s1;
    
    constructor(uint _roll,string memory _name){
        s1.roll = _roll;
        s1.name = _name;
    }
    function change(uint _roll,string memory _name) public{
        stu memory  _stu = stu({
            roll:_roll,
            name:_name
        });
        s1= _stu;
    }

}