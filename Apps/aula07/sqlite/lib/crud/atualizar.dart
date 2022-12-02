import 'package:flutter/material.dart';
import 'package:sqlite/helper.dart';

class Atualizar extends StatelessWidget {
  Atualizar({Key? key}) : super(key: key);

  // Implementar a lógica da atualização
  final dbHelper = DatabaseHelper.instance;

  void _atualizar() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnId: 5,
      DatabaseHelper.columnNome: 'Edson Melo de Souza',
      DatabaseHelper.columnIdade: 52
    };

    // Valor recebido com o número do ID atualizado
    final id = await dbHelper.update(row);
    print("Registro atualizado com sucesso.");
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
              _atualizar();
            },
            child: const Text(
              "Atualizar",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
