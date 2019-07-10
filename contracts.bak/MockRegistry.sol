pragma solidity 0.5.7;

/**
 * @title MockRegistry
 * @dev Will be replaced by the Humanity Registry on main net.
 */
contract MockRegistry {
  function isHuman(address who) external view returns (bool) {
    return true;
  }
}
