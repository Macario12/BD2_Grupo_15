import React, { useEffect, useState } from "react";
import Table from 'react-bootstrap/Table';
import axios from "axios";

export default function Tabla(props) {
    const [datos, setDatos] = useState([]);
    
    const titulos = ["Categoria","Total"]
    const ObtenerConsulta = () => {
        axios
          .get("http://localhost:4000/api/Consulta"+props.consulta)
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
    <Table striped bordered hover size="sm">
      <thead>
        <tr>
          {titulos.map(value=>(<th key={value}>{value}</th>))}
        </tr>
      </thead>
      <tbody>
        {datos.map((_,index)=>(
            <tr key={index}>
            <td>{_.CATEGORIA}</td>
            <td>{_.TOTAL}</td>
          </tr>
        ))}
      </tbody>
    </Table>
  )
}
