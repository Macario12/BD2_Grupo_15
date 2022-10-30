import React, { useEffect, useState } from "react";
import Table from 'react-bootstrap/Table';
import axios from "axios";
import NavbarH from './NavbarH'
export default function Consulta7() {
    const [datos, setDatos] = useState([]);
    
    
    const titulos = ["IdHabitacion","Habitacion","Total"]
    const ObtenerConsulta = () => {
        axios
          .get("http://localhost:4000/api/Consulta7")
          .then((response) => {
            if (response.status === 200) {
              console.log(response.data)
              setDatos(response.data);
            } else {
              console.log(response.data.Message);
            }
          });
      };
      useEffect(() => {
        ObtenerConsulta();
      }, []);
  return (
    <div>
      <NavbarH/>
      <Table striped bordered hover size="sm">
      <thead>
        <tr>
          {titulos.map(value=>(<th key={value}>{value}</th>))}
        </tr>
      </thead>
      <tbody>
        {datos.map((_,index)=>(
            <tr key={index}>
            <td>{_.idHabitacion}</td>
            <td>{_.habitacion}</td>
            <td>{_.TOTAL}</td>
          </tr>
        ))}
      </tbody>
    </Table>
    </div>
  )
}
