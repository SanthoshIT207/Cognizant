import React, { useState } from "react";
import GuestPage from "./components/GuestPage";
import UserPage from "./components/UserPage";

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  const handleLogin = () => setIsLoggedIn(true);
  const handleLogout = () => setIsLoggedIn(false);

  let content;
  if (isLoggedIn) {
    content = <UserPage onLogout={handleLogout} />;
  } else {
    content = <GuestPage onLogin={handleLogin} />;
  }

  return (
    <div style={{ padding: "20px" }}>
      <h1>Ticket Booking App</h1>
      {content}
    </div>
  );
}

export default App;
