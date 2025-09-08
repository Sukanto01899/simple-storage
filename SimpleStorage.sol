// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //0.0.12

contract SimpleStorage {
    uint256 public myNum;

    struct Man {
        uint256 age;
        string name;
    }

    Man[] man;
    mapping(string => uint256) manToAge;

    function store(uint256 _myNum) public virtual {
        myNum = _myNum;
    }

    function getNum() public view virtual returns (uint256) {
        return myNum;
    }

    function addMan(uint _age, string calldata _name) public {
        man.push(Man(_age, _name));
        manToAge[_name] = _age;
    }

    function getMan(string memory _man) public view returns (uint) {
        return manToAge[_man];
    }
}
