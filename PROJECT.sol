// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Transfer {
   	address public tutee;
    address payable public tutor;
    uint256 public cost;
    constructor(address _tutee, address _tutor, uint256 _cost) public
    {
        tutee = _tutee;
        tutor = payable(_tutor);
        cost = _cost;
    }
    function transfer(uint256 delta) public 
    {
        require(address(this).balance >= delta, "Insufficient balance in tutee");
        tutor.transfer(delta);
    }
}
