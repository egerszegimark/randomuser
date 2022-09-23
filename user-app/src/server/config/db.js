import { createConnection } from "mysql";
const db = createConnection({
  host: "localhost",
  user: "admin",
  password: "admin",
  database: "user_app",
});

export default db;
