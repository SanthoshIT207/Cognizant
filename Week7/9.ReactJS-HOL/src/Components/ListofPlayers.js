import React from 'react';

const ListofPlayers = () => {
  const players = [
    { name: "Virat", score: 95 },
    { name: "Rohit", score: 88 },
    { name: "Dhoni", score: 76 },
    { name: "Sachin", score: 67 },
    { name: "Sehwag", score: 60 },
    { name: "Bumrah", score: 90 },
    { name: "Dravid", score: 74 },
    { name: "Ashwin", score: 85 },
    { name: "Jadeja", score: 64 },
    { name: "Gill", score: 92 },
    { name: "Iyer", score: 68 }
  ];

  const filteredPlayers = players.filter(player => player.score >= 70);

  return (
    <div>
      <h2>Players with Score >= 70</h2>
      <ul>
        {filteredPlayers.map((player, index) => (
          <li key={index}>{player.name} - {player.score}</li>
        ))}
      </ul>
    </div>
  );
};

export default ListofPlayers;