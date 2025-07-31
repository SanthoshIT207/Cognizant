import React from "react";

function BlogDetails() {
  const blogs = [
    { id: 101, title: "React is Awesome", writer: "Dev Blogger" },
    { id: 102, title: "Hooks in Depth", writer: "React Wizard" },
  ];

  return (
    <div>
      <h2>Blog Details</h2>
      {blogs.length > 0 ? (
        blogs.map((blog) => (
          <div key={blog.id}>
            <h4>{blog.title}</h4>
            <p>Written by: {blog.writer}</p>
          </div>
        ))
      ) : (
        <p>No blogs available.</p>
      )}
    </div>
  );
}

export default BlogDetails;
