import React from 'react';

const IndianPlayers = () => {
  const oddTeam = ["Kohli", "Dhawan", "Pant"];
  const evenTeam = ["Rahul", "Shreyas", "Ishan"];

  const [p1, p2, p3] = oddTeam;
  const [e1, e2, e3] = evenTeam;

  const T20players = ["Surya", "Hardik"];
  const RanjiTrophyPlayers = ["Pujara", "Rahane"];

  const allPlayers = [...T20players, ...RanjiTrophyPlayers];

  return (
    <div>
      <h2>Odd Team Players</h2>
      <ul>
        <li>{p1}</li>
        <li>{p2}</li>
        <li>{p3}</li>
      </ul>
      <h2>Even Team Players</h2>
      <ul>
        <li>{e1}</li>
        <li>{e2}</li>
        <li>{e3}</li>
      </ul>
      <h2>All Players (Merged)</h2>
      <ul>
        {allPlayers.map((player, index) => (
          <li key={index}>{player}</li>
        ))}
      </ul>
    </div>
  );
};

export default IndianPlayers;