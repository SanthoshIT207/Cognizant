import React from "react";

function CourseDetails() {
  const showCourses = true;
  const courses = [
    { id: 1, name: "React 101", duration: "3 weeks" },
    { id: 2, name: "Fullstack with React", duration: "6 weeks" },
  ];

  return (
    <div>
      <h2>Course Details</h2>
      {showCourses && (
        <ul>
          {courses.map((course) => (
            <li key={course.id}>
              {course.name} - {course.duration}
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

export default CourseDetails;
