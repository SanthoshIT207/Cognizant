import React from "react";

function UserPage({ onLogout }) {
  return (
    <div>
      <h2>Welcome, User!</h2>
      <p>You are now logged in. You can book your tickets below.</p>
      <ul>
        <li>Flight 101 - <button>Book Now</button></li>
        <li>Flight 202 - <button>Book Now</button></li>
      </ul>
      <button onClick={onLogout}>Logout</button>
    </div>
  );
}

export default UserPage;
