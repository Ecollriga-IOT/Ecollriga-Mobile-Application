// lib/screens/edit_profile_screen.dart
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actualizar datos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.account_circle, size: 100),
            SizedBox(height: 20),
            buildEditableField("Nombres", "NombreActualizadoEjemplo1"),
            buildEditableField("Apellidos", "ApellidoActualizadoEjemplo1"),
            buildEditableField("Correo electrónico", "CorreoActualizadoEjemplo1"),
            buildEditableField("Fecha de Nacimiento", "DD/MM/AAAA_Actualizado"),
            buildEditableField("Tipo de Cuenta", "TipoDeCuentaActualizadoEjemplo1"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save updated profile
              },
              child: Text("Actualizar Datos"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Cancel update
              },
              child: Text("Cancelar"),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEditableField(String label, String initialValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: initialValue,
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
