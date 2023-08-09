// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract error{
    address public owner;
    uint public count=0;
    constructor(){
        owner=msg.sender;
    }
    function Require()   public {
        count++;
        require(msg.sender==owner,"You are not the owner ");
    }
    function Assert()   public {
        count++;
        assert(msg.sender==owner);
    }
    function Rivert()   public {
        count++;
        if(msg.sender!=owner){
            revert("Owner is required ");
        }
        else if(count>3){
            revert("Count is  bigger than 3");
        }
    }
}
