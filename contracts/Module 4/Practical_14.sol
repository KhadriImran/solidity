// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OperatorsExample {
    uint256 public addResult;
    uint256 public subResult;
    uint256 public mulResult;
    uint256 public divResult;
    uint256 public modResult;
    bool public eqResult;
    bool public neqResult;
    bool public gtResult;
    bool public ltResult;
    bool public gteResult;
    bool public lteResult;
    bool public andResult;
    bool public orResult;
    bool public notResult;

    function calculate(uint256 a, uint256 b) public {
        addResult = a + b;
        subResult = a - b;
        mulResult = a * b;
        divResult = a / b;
        modResult = a % b;
        eqResult = (a == b);
        neqResult = (a != b);
        gtResult = (a > b);
        ltResult = (a < b);
        gteResult = (a >= b);
        lteResult = (a <= b);
        andResult = (a > 0 && b > 0);
        orResult = (a > 0 || b > 0);
        notResult = !(a > 0);
    }
}