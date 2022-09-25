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
    axios.get("http://localhost/api/users/").then(function (response) {
      setUsers(response.data);
    });
  }

  //10 új felhasználó hozzáadása
  function addDataToDb() {
    axios.post("http://localhost/api/users/add").then(function (response) {
      console.log(response.data);
      navigate(0);
    });
  }

  return (
    <div className="container my-5">
      <button type="button" className="btn btn-secondary" onClick={addDataToDb}>
        Add 10 new users
      </button>
      <table className="table table-striped">
        <thead>
          <tr>
            <th className="h6">ID</th>
            <th className="h6">Name</th>
            <th className="h6">Age</th>
            <th className="h6">Gender</th>
            <th className="h6">City</th>
            <th className="h6">Country</th>
            <th className="h6">Email</th>
            <th className="h6">Salt</th>
            <th className="h6">Sha256</th>
            <th className="h6">Picture</th>
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
