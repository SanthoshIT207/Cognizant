import React, { useState } from "react";

function CurrencyConvertor() {
  const [rupees, setRupees] = useState("");
  const [euro, setEuro] = useState(null);

  const handleSubmit = () => {
    const rate = 0.011; // 1 INR = 0.011 EUR approx
    setEuro((parseFloat(rupees) * rate).toFixed(2));
  };

  return (
    <div>
      <h2>Currency Convertor</h2>
      <input
        type="number"
        value={rupees}
        onChange={(e) => setRupees(e.target.value)}
        placeholder="Enter amount in INR"
      />
      <button onClick={handleSubmit}>Convert</button>
      {euro && <p>Equivalent in Euro: €{euro}</p>}
    </div>
  );
}

export default CurrencyConvertor;
