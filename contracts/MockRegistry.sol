pragma solidity 0.5.7;

contract MockRegistry {
  function isHuman(address who) external view returns (bool) {
    return true;
  }
}
