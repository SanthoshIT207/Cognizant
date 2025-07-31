import React from "react";

function WelcomeButton() {
  const sayWelcome = (msg) => {
    alert(msg);
  };

  return <button onClick={() => sayWelcome("Welcome!")}>Say Welcome</button>;
}

export default WelcomeButton;
