// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract A {
    //Declare a virtual function foo() which can we overriden by the  children
    function foo() public pure virtual returns(string memory) {
       return "A";
    }
}

contract B is A {
    //Override  A.foo();
    //But also allow this function to be overriden by the furthur children
    function foo() public pure virtual override returns(string memory) {
        return "B";
    } 
}

contract C is A {
    //Similiar to the B contract 
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

//making the contract D which will be inherited from both the parent B and C
contract D is B, C {

// D.foo() will return "C" since C is the right most parent
//since C is the right-most parent with function foo();
    function foo() public pure virtual override (B, C) returns (string memory) {
       return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B"; since B is the right most parent
    function foo() public pure virtual override (C, B)returns (string memory){
        return super.foo(); //super keyword is for the calling the parent functions
    }
}