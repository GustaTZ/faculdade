import 'package:flutter/material.dart';
import 'package:sqlite/helper.dart';

class Excluir extends StatelessWidget {
  Excluir({Key? key}) : super(key: key);

  // Implementar a lógica da atualização
  final dbHelper = DatabaseHelper.instance;

  void _excluir() async {
    // Valor recebido com o número do ID atualizado
    await dbHelper.delete(6);
    print("Registro excluído com sucesso.");
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
              _excluir();
            },
            child: const Text(
              "Excluir",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
