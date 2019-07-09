pragma solidity 0.5.7;

import "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

interface IHumanityRegistry {
  function isHuman(address who) external view returns (bool);
}

/**
 * @title Vote
 * @dev A vote in which each member of Humanity has one vote.
 */
contract Vote {

  IHumanityRegistry public registry;
  IERC20 public dai;
  mapping (address => bool) public voted;

  uint public yesCount;
  uint public noCount;
  uint public abstainCount;

  uint public constant VOTING_REWARD = 1e18; // 1 Dai

  modifier cast() {
    require(registry.isHuman(msg.sender), "Vote::cast: Only humans may vote");
    require(!voted[msg.sender], "Vote::cast: Already voted");
    _;
    voted[msg.sender] = true;

    // Reward voter
    if (dai.balanceOf(address(this)) >= VOTING_REWARD) {
        dai.transfer(msg.sender, VOTING_REWARD);
    }
  }

  constructor(IHumanityRegistry _registry, IERC20 _dai) public {
      registry = _registry;
      dai = _dai;
  }

  function voteYes() public vote {
      yesCount += 1;
  }

  function voteNo() public vote {
      noCount += 1;
  }

  function abstain() public vote {
      abstainCount += 1;
  }

}
