// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:sqlite/helper.dart';

// Vamos criar como Stateless, mas o correto é StateFull

class Listar extends StatelessWidget {
  Listar({super.key});

  // Lógica para mostrar os dados salvos no banco

  // Cria uma instância para o banco de dados
  final dbHelper = DatabaseHelper.instance;

  // Método para listagem dos dados (no prompt)
  void _listar() async {
    // Os dados chegam em um formato de lista
    final dados = await dbHelper.queryAllId();

    // Criar um laço de repetição para mostrar os dados
    for (var linha in dados) {
      print(linha);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                // método para listar
                _listar();
              },
              child: const Text(
                'Listar',
                style: TextStyle(fontSize: 30),
              )),
        ],
      ),
    );
  }
}
