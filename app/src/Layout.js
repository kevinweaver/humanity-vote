import React from "react";
import {
  AccountData,
  ContractData,
  ContractForm,
} from "drizzle-react-components";
import logo from "./assets/humanity-logo.png";
import NavBar from "./NavBar";
import "./Vote.css";

export default ({ accounts }) => (
  <div className="App">
    <NavBar/>
    <div className="container">
      <div className="section">
        <img src={logo} className="humanity-logo" alt="humanity-logo" />
        <h1>Vote</h1>
      </div>

      <div className="section">
        <h2>Should the Ethereum Community run a Libra node?</h2>

        <div className="voteContainer">
          <div className="buttonContainer">
            <button>Yes</button>
          </div>
          <div className="buttonContainer">
            <button>No</button>
          </div>
        </div>
      </div>
    </div>
  </div>
);
