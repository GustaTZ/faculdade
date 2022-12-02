import 'package:flutter/material.dart';
import 'package:sqlite/crud/incluir.dart';
import 'package:sqlite/crud/atualizar.dart';
import 'package:sqlite/crud/excluir.dart';
import 'crud/listar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD SQLite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        // abas
        length: 4, // número de abas
        // criação das abas
        child: Scaffold(
          appBar: AppBar(
            title: const Text('CRUD SQLite'),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.add), text: 'Incluir'),
              Tab(icon: Icon(Icons.list), text: 'Listar'),
              Tab(icon: Icon(Icons.update), text: 'Atualizar'),
              Tab(icon: Icon(Icons.delete), text: 'Excluir'),
            ]),
          ),
          body: TabBarView(
            children: [Incluir(), Listar(), Atualizar(), Excluir()],
          ),
        ),
      ),
    );
  }
} // Implementar o código para as outras três abas e conectar ao main
  // Tempo: 15 minutos
