//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// Three basic implementation of modifiers
// Basic
// Input
// Sandwich, more like baby decorators

contract Modifiers{
    error CusError(uint error, string phrase);
    modifier checkName(uint _age){
        if (_age != 21 ){
            revert CusError(_age, "Age error");
            }
            _;
    }
    // sandwich, a modifier is called on a function, it is executed and other code are 
    // executed after its execution
    uint public a = 12;
    error conAfter(string error, address caller);
    modifier continueAfterExec(uint _caller){
        if (_caller > a ){
            revert conAfter("Invalid address", msg.sender);
        }
        _;
        
        //uint external hi =7;
    }
    function checkAddress(uint _caller, uint _age) external view checkName(_age) continueAfterExec(_caller){
        
    }
    function myName(uint _age) external pure checkName(_age){
        //uint public hi = _age;
        }

}
 

