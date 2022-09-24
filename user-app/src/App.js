import ListUser from "./components/ListUser";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";

export default function App() {
  return (
    <>
      <Router>
        <Routes>
          <Route path="*" element={<ListUser />} />
        </Routes>
      </Router>
    </>
  );
}
