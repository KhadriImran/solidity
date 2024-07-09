// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TimeUnitsExample {
    uint256 public oneSecond;
    uint256 public oneMinute;
    uint256 public oneHour;
    uint256 public oneDay;
    uint256 public oneWeek;

    function setTimeUnits() public {
        oneSecond = 1 seconds;
        oneMinute = 1 minutes;
        oneHour = 1 hours;
        oneDay = 1 days;
        oneWeek = 1 weeks;
    }

    // Function to get the current timestamp
    function getCurrentTime() public view returns (uint256) {
        return block.timestamp;
    }

    // Function to add days to the current timestamp
    function addDays(uint256 daysToAdd) public view returns (uint256) {
        return block.timestamp + (daysToAdd * 1 days);
    }
}