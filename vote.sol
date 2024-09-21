//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Vote{
    address[] public onlyVote;

    uint public yes;
    uint public no;

    function yesVote() public {
        for (uint i = 0; i < onlyVote.length; i++){
            if (onlyVote[i] == msg.sender){
                revert("you already had your say!");
            }
        }
        onlyVote.push(msg.sender);
        yes += 1;
    }
    function noVote() public {
        for (uint i = 0; i < onlyVote.length; i++){
            if (onlyVote[i] == msg.sender){
                revert("you already had your say!");
            }
        }
        onlyVote.push(msg.sender);
        no += 1;
    }


}
