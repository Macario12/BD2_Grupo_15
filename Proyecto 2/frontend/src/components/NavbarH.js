import React from 'react'
import Nav from 'react-bootstrap/Nav';
export default function NavbarH() {

    return (
        <div>
            <Nav
            activeKey="1"
            >
            <Nav.Item>
                <Nav.Link href="/" eventKey="1">Consulta 1</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta2" eventKey="2">Consulta 2</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta3" eventKey="3">Consulta 3</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta4" eventKey="3">Consulta 4</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta5" eventKey="3">Consulta 5</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta6" eventKey="3">Consulta 6</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta7" eventKey="3">Consulta 7</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta8" eventKey="3">Consulta 8</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta9" eventKey="3">Consulta 9</Nav.Link>
            </Nav.Item>
            <Nav.Item>
                <Nav.Link href="/Consulta10" eventKey="3">Consulta 10</Nav.Link>
            </Nav.Item>
            </Nav>
            <br/>
        </div>
      );
}
