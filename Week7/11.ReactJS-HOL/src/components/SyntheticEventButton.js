import React from "react";

function SyntheticEventButton() {
  const handleClick = (event) => {
    alert("I was clicked");
  };

  return <button onClick={handleClick}>Synthetic Event Button</button>;
}

export default SyntheticEventButton;
