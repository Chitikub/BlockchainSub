// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract ComplicatedBank {
mapping(address => uint256) public balances;
address[] accounts;
address public owner;
uint256 public rate = 3;  
constructor() {
owner = msg.sender;
}
modifier onlyOwner() {
require(msg.sender == owner, "You are not owner.");
_;
}

// -------------- ฟังชั่นการเรียกดูบัญชี  --------------
function getbalance() public view returns (uint256) {
return balances[msg.sender];
}

// -------------- ฟังชั่นการฝากเงิน  --------------
function deposit() public payable {

balances[msg.sender] += msg.value;

}

// -------------- ฟังชั่นการถอนเงิน  --------------
function withdraw(uint256 moneyWithdraw) public {
require(balances[msg.sender] >= moneyWithdraw, "Insufficient money to withdraw!");
balances[msg.sender] -= moneyWithdraw; 
(bool success, ) = msg.sender.call{value: moneyWithdraw}("");
require(success, "Withdraw failed!");
        
}

// -------------- ฟังชั่นการเรียกดูเงินรวมของระบบ --------------
function getSystemBalance() public view onlyOwner returns (uint256) {
return address(this).balance;
}

// -------------- ฟังชั่นการคำนวนดอกเบี้ย  --------------
 function calculateInterest(address _user) public view onlyOwner returns (uint256) { 
        uint interest = balances[_user] * rate/100;
        return interest; 
    }
}
