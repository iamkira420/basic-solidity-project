pragma solidity >=0.4.25 <0.9.0;

contract Shipping {
    // Our pre-defined values for shipping listed as enums
    enum ShippingStatus { Pending, Shipped, Delivered }

    // Save enum ShippingStatus in variable status
    ShippingStatus private status;

    // Event to launch when package has arrived
    event LogNewAlert(string description);

    // This initializes our contract state (sets enum to Pending once the program starts)
    constructor() public {
        status = ShippingStatus.Pending;
    }

    // Function to change the status of the package to Shipped
    function Shipped() public {
        status = ShippingStatus.Shipped;
        emit LogNewAlert("Your package has been shipped");
    }

    // Function to change the status of the package to Delivered
    function Delivered() public {
        status = ShippingStatus.Delivered;
        emit LogNewAlert("Your package has arrived");
    }

    // Function to get the status of the shipping
    function getStatus(ShippingStatus _status) internal pure returns (string memory sta ) {
        // Check the current status and return the correct name
        if (ShippingStatus.Pending == _status) return "Pending";
        if (ShippingStatus.Shipped == _status) return "Shipped";
        if (ShippingStatus.Delivered == _status) return "Delivered";
    }
}
