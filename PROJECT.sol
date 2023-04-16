// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Transfer {
   	address public sender;
    address payable public reciver;
    uint256 public cost;
    uint256 public balance;
    uint256 public reciverBalance;


   
    function payment(uint256 _cost, address _sender, address payable _reciver) public 
    {
        reciver = payable(_reciver);
        sender = _sender;
        cost = _cost;
        balance= sender.balance;
        require(sender.balance >= cost/10, "Insufficient balance");
        reciver.transfer(cost/10);
        reciverBalance = reciver.balance;

    }
}
