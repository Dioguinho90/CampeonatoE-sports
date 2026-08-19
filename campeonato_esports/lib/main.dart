import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaSoma(),
    );
  }
}

class TelaSoma extends StatefulWidget {
  const TelaSoma({super.key});

  @override
  State<TelaSoma> createState() => _TelaSomaState();
}

class _TelaSomaState extends State<TelaSoma> {
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();
  final TextEditingController numero3Controller = TextEditingController();

  double resultado = 0;

  void somar() {
    double n1 = double.tryParse(numero1Controller.text) ?? 0;
    double n2 = double.tryParse(numero2Controller.text) ?? 0;
    double n3 = double.tryParse(numero3Controller.text) ?? 0;

    setState(() {
      resultado = n1 + n2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campeonato de E-sports'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: numero1Controller,
              decoration: const InputDecoration(
                labelText: 'Quantas partidas você perdeu?',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            TextField(
              controller: numero2Controller,
              decoration: const InputDecoration(
                labelText: 'Quantos pontos vale cada vitória?',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

                        const SizedBox(height: 20),

            TextField(
              controller: numero3Controller,
              decoration: const InputDecoration(
                labelText: 'Quantos pontos vale cada vitória?',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: somar,
              child: const Text('Somar'),
            ),

            const SizedBox(height: 20),

            Text(
              'Resultado: $resultado',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}