// lib/screens/home_screen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Usuario1!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Echa un vistazo al resumen de hoy',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.water_drop, size: 40),
                    Text("Humedad"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.thermostat, size: 40),
                    Text("Temperatura"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Datos de la última semana',
              style: TextStyle(fontSize: 16),
            ),
            // Placeholder for weekly chart
            Container(
              height: 200,
              color: Colors.grey[200],
              child: Center(child: Text("Gráfico semanal aquí")),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Agregar planta"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text("Agregar cultivo"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.nature), label: 'Plantas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
