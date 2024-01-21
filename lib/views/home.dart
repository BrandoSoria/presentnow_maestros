import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> materias = [
    'Matemáticas',
    'Historia',
    'Ciencias',
    'Literatura',
    'Conmutacion De Redes De Datos'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materias'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: materias.map((materia) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetalleMateriaScreen(materia: materia),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  primary: Color.fromRGBO(159, 199, 232, 1.0),
                ),
                child: Text(
                  materia,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DetalleMateriaScreen extends StatelessWidget {
  final String materia;

  DetalleMateriaScreen({required this.materia});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de $materia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Detalles de $materia',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // Agrega lógica para registrar alumnos por materia aquí
            ],
          ),
        ),
      ),
    );
  }
}
