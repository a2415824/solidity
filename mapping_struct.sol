// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.0 <0.9.0;

contract a1{
    struct student{
        string name;
        uint class;
        uint age;
    }
    mapping(uint=>student) public stu;

    function input(uint _roll,string memory _name,uint _class,uint _age)public{
        stu[_roll]=student(_name,_class,_age);
    }

}