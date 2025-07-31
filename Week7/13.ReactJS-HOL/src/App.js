import React, { useState } from "react";
import BookDetails from "./components/BookDetails";
import BlogDetails from "./components/BlogDetails";
import CourseDetails from "./components/CourseDetails";

function App() {
  const [selectedComponent, setSelectedComponent] = useState("");

  const renderComponent = () => {
    if (selectedComponent === "book") return <BookDetails />;
    else if (selectedComponent === "blog") return <BlogDetails />;
    else if (selectedComponent === "course") return <CourseDetails />;
    else return <p>Please select a component to display</p>;
  };

  return (
    <div style={{ padding: "20px" }}>
      <h1>Blogger App - Conditional Rendering</h1>
      <div>
        <button onClick={() => setSelectedComponent("book")}>Book Details</button>
        <button onClick={() => setSelectedComponent("blog")}>Blog Details</button>
        <button onClick={() => setSelectedComponent("course")}>Course Details</button>
      </div>
      <hr />
      {renderComponent()}
    </div>
  );
}

export default App;
