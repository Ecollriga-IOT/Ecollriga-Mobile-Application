// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.account_circle, size: 100),
            SizedBox(height: 20),
            buildInfoField("Nombres", "NombreEjemplo1"),
            buildInfoField("Apellidos", "ApellidoEjemplo1"),
            buildInfoField("Correo electrónico", "CorreoElectronicoEjemplo1"),
            buildInfoField("Fecha de Nacimiento", "DD/MM/AAAA"),
            buildInfoField("Tipo de Cuenta", "TipoDeCuentaEjemplo1"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to EditProfileScreen
              },
              child: Text("Editar perfil"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Sign out
              },
              child: Text("Cerrar Sesión"),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            hintText: value,
            filled: true,
            fillColor: Colors.green[50],
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
