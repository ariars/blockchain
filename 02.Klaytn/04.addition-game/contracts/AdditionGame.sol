// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract AdditionGame {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function deposit() public payable {  
        require(msg.sender == owner);
    }   
  
    function transfer(uint _value) public returns (bool) {
        require(getBalance() >= _value);
        payable(msg.sender).transfer(_value);
        return true;
    }
}