import 'package:flutter/material.dart';
import 'dart:convert'; // trabalha com o json
import 'package:http/http.dart' as http; // trabalha com o protocolo HTTP

// Método principal da aplicação
void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Temperatura {
  final String id;
  final String temperatura;
  final String pressao;
  final String data;
  final String hora;
  Temperatura(
      {required this.id,
      required this.temperatura,
      required this.pressao,
      required this.data,
      required this.hora});

  // converte o formato JSON para um objeto "Pessoa"
  factory Temperatura.fromJson(Map<String, dynamic> json) {
    return Temperatura(
      id: json['id'] as String,
      temperatura: json['temperatura'] as String,
      pressao: json['pressao'] as String,
      data: json['data'] as String,
      hora: json['hora'] as String,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _id = '';
  String _temperatura = '';
  String _data = '';

  // Endereço da API
  Uri url = Uri.parse('http://edsonmelo.atwebpages.com/iot/get_all.php');

  // Método para requisição da API
  jsonRestApiHttp() async {
    // esse bloco de código envia a requisição ao servidor da API
    http.Response response = await http.get(url);

    // Bloco que recupera a informação do servidor e converte JSON para objeto
    final parsed = json.decode(response.body);
    var temperatura = Temperatura.fromJson(parsed);

    // Vamos mostrar os dados na tela do APP, tratando os erros
    try {
      if (int.parse(temperatura.id) > 0) {
        setState(() {
          _id = temperatura.id;
          _temperatura = temperatura.temperatura + ' °';
          _data = temperatura.data + " - " + temperatura.hora;
        });
      }
    } catch (e) {
      setState(() {
        _id = '';
        _temperatura = '';
        _data = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IoT - Leitura Remota"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(100.0, 0, 100.0, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    const Icon(Icons.numbers, size: 50),
                    Text(_id,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    const Icon(Icons.calendar_month, size: 50),
                    Text(_data,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    const Icon(Icons.whatshot_rounded, size: 50),
                    Text(_temperatura,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: SizedBox(
                  height: 40.0,
                  child: RawMaterialButton(
                    onPressed: () {
                      jsonRestApiHttp();
                    },
                    child:
                        const Text('Verificar', style: TextStyle(fontSize: 30)),
                    elevation: 0.0,
                    fillColor: const Color.fromARGB(255, 240, 240, 240),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
