pragma solidity 0.5.7;

import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

/**
 * @title MockERC20
 * @dev Will be replaced by implementation on mainnet
 */
contract MockERC20 is ERC20 {

    function mint(address account, uint value) public {
        _mint(account, value);
    }

}
