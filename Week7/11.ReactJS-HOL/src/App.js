import React from "react";
import Counter from "./components/Counter";
import WelcomeButton from "./components/WelcomeButton";
import SyntheticEventButton from "./components/SyntheticEventButton";
import CurrencyConvertor from "./components/CurrencyConvertor";

function App() {
  return (
    <div style={{ padding: "20px" }}>
      <h1>React Event Examples</h1>
      <Counter />
      <WelcomeButton />
      <SyntheticEventButton />
      <CurrencyConvertor />
    </div>
  );
}

export default App;
