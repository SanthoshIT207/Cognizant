import React from 'react';
import CohortDetails from './CohortDetails';

function App() {
  return (
    <div>
      <h1>My Academy Cohorts</h1>
      <CohortDetails name="React Bootcamp" status="ongoing" />
      <CohortDetails name="Java Fundamentals" status="completed" />
    </div>
  );
}

export default App;
