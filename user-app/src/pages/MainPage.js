import React, { useState, useEffect } from "react";
import axios from "axios";
import "../App.css";

function MainPage() {
  const [userList, setUserList] = useState([]);

  useEffect(() => {
    axios.get("http://localhost:5000/api/get").then((data) => {
      setUserList(data.data);
    });
  }, []);

  return (
    <>
      <table>
        {userList.map((record) => {
          return (
            <>
              <tr>
                <td>{record.id}</td>
                <td>{record.name}</td>
                <td>{record.age}</td>
                <td>{record.gender}</td>
                <td>{record.city}</td>
                <td>{record.country}</td>
                <td>{record.email}</td>
                <td>{record.salt}</td>
                <td>{record.sha256}</td>
                <td>{record.picture}</td>
              </tr>
            </>
          );
        })}
      </table>
    </>
  );
}

export default MainPage;
