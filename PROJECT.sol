// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Transfer {
   	address sender;
    address payable public reciver;
    uint256 public cost;
    uint256 public balance;
    uint256 public reciverBalance;
    uint256 public senderBalanceBefore;
    uint256 public senderBalanceAfter;

    function payment(uint256 _cost, address _sender, address payable _reciver) public 
    {
        reciver = payable(_reciver);
        sender = _sender;
        cost = _cost/ 1 ether;
        balance = sender.balance/ 1 ether;
        require(sender.balance >= cost/1 ether, "Insufficient balance");
        senderBalanceBefore = sender.balance/ 1 ether;
        reciver.transfer(cost);
        senderBalanceAfter = sender.balance/ 1 ether;
        
    }
    receive() external payable {}

}


