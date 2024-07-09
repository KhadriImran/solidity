// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumExample {
    // Define an enum named Status
    enum Status { Pending, Shipped, Delivered, Cancelled }

    // Declare a state variable of type Status
    Status public status;

    // Function to set the status
    function setStatus(Status _status) public {
        status = _status;
    }

    // Function to get the current status
    function getStatus() public view returns (Status) {
        return status;
    }

    // Function to mark the status as Shipped
    function markShipped() public {
        status = Status.Shipped;
    }

    // Function to mark the status as Delivered
    function markDelivered() public {
        status = Status.Delivered;
    }

    // Function to mark the status as Cancelled
    function markCancelled() public {
        status = Status.Cancelled;
    }
}