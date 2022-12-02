import 'package:flutter/material.dart';
import 'package:sqlite/helper.dart';

// Colaboração do Pedro Henrique
class Incluir extends StatelessWidget {
  Incluir({Key? key}) : super(key: key);

  // Implementar a lógica da inclusão
  final dbHelper = DatabaseHelper.instance;

  void _inserir() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnNome: 'Edson Souza',
      DatabaseHelper.columnIdade: 51
    };

    // Valor recebido com o número do ID inserido (automaticamente)
    final id = await dbHelper.insert(row);
    print("Registro inserido com sucesso: $id");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.black),
            onPressed: () {
              _inserir();
            },
            child: const Text(
              "Incluir",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
