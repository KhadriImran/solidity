// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValueTypesExample {
    // Boolean value type
    bool public isTrue = true;

    // Integer value types
    uint256 public positiveNumber = 42;
    int256 public negativeNumber = -42;

    // Address value type
    address public wallet = 0x1234567890123456789012345678901234567890;

    // Bytes value types
    bytes32 public fixedData = "Hello, World!";
    bytes public dynamicData = "Hello, Solidity!";

    // Enum value type
    enum Status { Pending, Shipped, Delivered, Cancelled }
    Status public status;

    // Function to set the status
    function setStatus(Status _status) public {
        status = _status;
    }

    // Function to get the current status
    function getStatus() public view returns (Status) {
        return status;
    }
}