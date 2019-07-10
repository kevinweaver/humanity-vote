import React, { Component } from "react";
import {
  AccountData,
  ContractData,
  ContractForm,
} from "drizzle-react-components";


class Vote ({ accounts }) extends Component {
  render() {
    return (
      <div className="voteContainer">
        <p>
          <strong>Total Supply: </strong>
          <ContractData
            contract="TutorialToken"
            method="totalSupply"
            methodArgs={[{ from: accounts[0] }]}
          />{" "}
          <ContractData contract="TutorialToken" method="symbol" hideIndicator />
        </p>
        <p>
          <strong>My Balance: </strong>
          <ContractData
            contract="TutorialToken"
            method="balanceOf"
            methodArgs={[accounts[0]]}
          />
        </p>
        <h3>Send Tokens</h3>
        <ContractForm
          contract="TutorialToken"
          method="transfer"
          labels={["To Address", "Amount to Send"]}
        />
      </div>
    );
  }
}

export default Vote;
