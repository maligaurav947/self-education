import React, { useState } from "react";

function App() {
  const [count, setCount] = useState(0);
  function increment() {
    //setCount(prevCount => prevCount+=1);
    setCount(function (prevCount) {
      return (prevCount += 1);
    });
  }

  function decrement() {
    setCount(function (prevCount) {
      if (prevCount > 0) {
        return (prevCount -= 1);
      } else {
        return (prevCount = 0);
      }
    });
  }

  return (
    <>
      <h1
        style={{
          color: "white",
          position: "fixed",
          fontSize: "1.5rem",
        }}
      >
        React is a free and open-source front-end JavaScript library for
        building user interfaces based on UI components. It is maintained by
        Meta and a community of individual developers and companies.
      </h1>
      <div
        style={{
          height: "100vh",
          width: "100%",
          backgroundColor: "#000",
          color: "#fff",
          display: "grid",
          placeContent: "center",
        }}
      >
        <div>
          <h2
            style={{
              textAlign: "center",
              fontSize: "2.5rem",
            }}
          >
            {count}
          </h2>
          <div
            style={{
              display: "flex",
              gap: "5px",
            }}
          >
            <button
              onClick={increment}
              style={{
                fontSize: "1.5rem",
                width: "150px",
                height: "35px",
              }}
            >
              Increment
            </button>
            <button
              onClick={increment}
              style={{
                fontSize: "1.5rem",
                width: "150px",
                height: "35px",
              }}
            >
              Decrement
            </button>
          </div>
        </div>
      </div>
    </>
  );
}

export default App;
