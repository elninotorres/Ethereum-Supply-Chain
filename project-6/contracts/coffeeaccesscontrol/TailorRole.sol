pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'ConsumerRole' to manage this role - add, remove, check
contract TailorRole {

  using Roles for Roles.Role;

  // Define 2 events, one for Adding, and other for Removing


  event ClothAdded(address indexed account);
  event ClothRemoved(address indexed account);

  // Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
  Roles.Role private tailors;
  // In the constructor make the address that deploys this contract the 1st consumer
  constructor() public {
    _addTailor(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyTailor() {
  require(isTailor(msg.sender));
    _;
  }

  // Define a function 'isConsumer' to check this role
  function isTailor(address account) public view returns (bool) {
    return tailors.has(account);
  }

  // Define a function 'addConsumer' that adds this role
  function addTailor(address account) public onlyTailor {
    _addTailor(account);
  }

  // Define a function 'renounceConsumer' to renounce this role
  function renounceTailor() public {
    _removeTailor(msg.sender);
  }

  // Define an internal function '_addConsumer' to add this role, called by 'addConsumer'
  function _addTailor(address account) internal {
    tailors.add(account);
    emit ClothAdded(account);
  }

  // Define an internal function '_removeConsumer' to remove this role, called by 'removeConsumer'
  function _removeTailor(address account) internal {
    tailors.remove(account);
    emit ClothRemoved(account);
  }
}