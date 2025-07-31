import React from "react";

function GuestPage({ onLogin }) {
  return (
    <div>
      <h2>Welcome, Guest!</h2>
      <p>You can browse flight details below.</p>
      <ul>
        <li>Flight 101 - Delhi to Mumbai - 10:00 AM</li>
        <li>Flight 202 - Mumbai to Chennai - 01:30 PM</li>
      </ul>
      <button onClick={onLogin}>Login to Book</button>
    </div>
  );
}

export default GuestPage;
