import React from 'react';

function App() {
  const offices = [
    {
      id: 1,
      name: 'SpaceHub A',
      rent: 55000,
      address: '123 Tech Park, Bengaluru',
      image: 'https://via.placeholder.com/300x150?text=Office+1'
    },
    {
      id: 2,
      name: 'SpaceHub B',
      rent: 62000,
      address: '456 Startup Zone, Chennai',
      image: 'https://via.placeholder.com/300x150?text=Office+2'
    },
    {
      id: 3,
      name: 'SpaceHub C',
      rent: 45000,
      address: '789 Innovation Street, Hyderabad',
      image: 'https://via.placeholder.com/300x150?text=Office+3'
    }
  ];

  return (
    <div style={{ padding: '20px', fontFamily: 'Arial' }}>
      <h1 style={{ textAlign: 'center', color: '#333' }}>Office Space Rental App</h1>
      {offices.map((office) => (
        <div
          key={office.id}
          style={{
            border: '1px solid #ccc',
            padding: '15px',
            margin: '20px auto',
            width: '60%',
            borderRadius: '8px',
            boxShadow: '0 0 10px rgba(0,0,0,0.1)'
          }}
        >
          <img src={office.image} alt={office.name} style={{ width: '100%', borderRadius: '5px' }} />
          <h2>{office.name}</h2>
          <p><strong>Address:</strong> {office.address}</p>
          <p>
            <strong>Rent:</strong>{' '}
            <span style={{ color: office.rent < 60000 ? 'red' : 'green' }}>
              ₹{office.rent}
            </span>
          </p>
        </div>
      ))}
    </div>
  );
}

export default App;