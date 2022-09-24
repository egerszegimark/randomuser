import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";

export default function ListUser() {
  const [users, setUsers] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    getUsers();
  }, []);

  function getUsers() {
    axios.get("http://localhost/gyak/users/").then(function (response) {
      setUsers(response.data);
    });
  }

  //10 új felhasználó hozzáadása
  function addDataToDb() {
    axios.post("http://localhost/gyak/users/add").then(function (response) {
      console.log(response.data);
      navigate(0);
    });
  }

  return (
    <div className="container my-5">
      <button type="button" className="btn btn-secondary" onClick={addDataToDb}>
        Add new 10 users
      </button>
      <table className="table table-striped">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>City</th>
            <th>Country</th>
            <th>Email</th>
            <th>Salt</th>
            <th>Sha256</th>
            <th>Picture</th>
          </tr>
        </thead>
        <tbody className="table-group-divider">
          {users.map((user, key) => (
            <tr key={key}>
              <td>{user.id}</td>
              <td>{user.name}</td>
              <td>{user.age}</td>
              <td>{user.gender}</td>
              <td>{user.city}</td>
              <td>{user.country}</td>
              <td>{user.email}</td>
              <td>{user.salt}</td>
              <td>{user.sha256}</td>
              <td>
                <img
                  src={`${user.picture}`}
                  alt="User's profile"
                  className="rounded-circle"
                ></img>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}
