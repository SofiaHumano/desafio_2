import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
        useMaterial3: true,
      ),
      home: const TarjetaPersonal(),
    );
  }
}

class TarjetaPersonal extends StatefulWidget {
  const TarjetaPersonal({super.key});

  @override
  State<TarjetaPersonal> createState() => _TarjetaPersonalState();
}

class _TarjetaPersonalState extends State<TarjetaPersonal> {
  bool _fondoOscuro = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _fondoOscuro ? Colors.grey.shade900 : Colors.white,
      appBar: AppBar(
        title: const Text('Mi tarjeta'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
            const SizedBox(height: 16),

            Text(
              'Sofia Humano',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _fondoOscuro ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              'Tecnico Informatico',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fondo oscuro',
                  style: TextStyle(
                    color: _fondoOscuro ? Colors.white : Colors.black,
                  ),
                ),
                Switch(
                  value: _fondoOscuro,
                  onChanged: (bool nuevoValor) {
                    setState(() {
                      _fondoOscuro = nuevoValor;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('¡Hola!')),
                );
              },
              child: const Text('Saludar'),
            ),
          ],
        ),
      ),
    );
  }
}
