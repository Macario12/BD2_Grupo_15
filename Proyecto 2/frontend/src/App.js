import {BrowserRouter, Routes, Route} from "react-router-dom";
import Home from "./components/Home";
import Consulta2 from "./components/Consulta2";
import Consulta3 from "./components/Consulta3";
import Consulta4 from "./components/Consulta4";
import Consulta5 from "./components/Consulta5";
import Consulta6 from "./components/Consulta6";
import Consulta7 from "./components/Consulta7";
import Consulta8 from "./components/Consulta8";
import Consulta9 from "./components/Consulta9";
import Consulta10 from "./components/Consulta10";
function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home/>} />
        <Route path="/Consulta2" element={<Consulta2/>} />
        <Route path="/Consulta3" element={<Consulta3/>} />
        <Route path="/Consulta4" element={<Consulta4/>} />
        <Route path="/Consulta5" element={<Consulta5/>} />
        <Route path="/Consulta6" element={<Consulta6/>} />
        <Route path="/Consulta7" element={<Consulta7/>} />
        <Route path="/Consulta8" element={<Consulta8/>} />
        <Route path="/Consulta9" element={<Consulta9/>} />
        <Route path="/Consulta10" element={<Consulta10/>} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
