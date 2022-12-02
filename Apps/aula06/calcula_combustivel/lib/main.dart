// ignore_for_file: unused_element, unused_field, unused_local_variable
import 'package:flutter/material.dart';

void main(){
  //metodo principal da aplicação
  runApp(
    //carregando o framework
    const MaterialApp(
      home:Home(),//rota de inicialização do app (start route)
      debugShowCheckedModeBanner: false,//esconde o debug
    ),
  );
}

//classe principal da aplicação
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //1. Esta classe tera todo o conteudo da aplicação
  //inclusive a interface do usuario
  //2. Logica de da aplicação(compos de entrada, botões, e objetos)
  //3. Vamos implementar nossos "controles"(campos e formulario)
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  //Criando formulario
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //Variavel para receber o resultado sobre o abastecimento
  String _resultado = '';
  //Logica de aplicação(realizando calculo)

  //Metodo para limpar (resetar) os campos do formulario
  void _reset(){
    setState(() {
      alcoolController.text='';
      gasolinaController.text='';
      _resultado='';
      _formKey=GlobalKey<FormState>();
    });
  }
  //Metodo para calcular preço do combustivel
  void _calcular(){
    double vAlcool=double.parse(alcoolController.text.replaceAll(',', '.'));
    double vGasolina=double.parse(gasolinaController.text.replaceAll(',', '.'));
    double proporcao=vAlcool/vGasolina;//proporção
    
    //Nao esquecer de colocar o setState quando for atualizar algo
    setState(() {//atualizar o valor da variavel '_resultado'
      //Operador ternário
      _resultado=(proporcao<0.7) ? 'Abasteça com Álcool' : 'Abasteça com Gasolina';
    });
  }
  //O codigo abaixo irá construir a interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //monta a barra superior do APP
      appBar: AppBar(
        title: const Text(
          "Álcool ou Gasolina?",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: (){
              //Chamar o metodo para dar o refresh
              _reset();
            },
          ),
        ],
      ),
      //Criando corpo do formulario (entrada de dados)
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
        child: Form(
          key: _formKey, //associando o formulario ao controle
          child: Column( //Coluno para inserir controles
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.local_gas_station,
                size: 80,
                color: Colors.lightBlue[900],
              ),
              //criando o campo de entrada para o alcool
              TextFormField(
                controller: alcoolController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number, //so via celular
                validator: (value) => value!.isEmpty ? 'Informe o valor do álcool' : null,
                decoration: const InputDecoration(
                  labelText: 'Valor do Álcool'
                ),
                style: const TextStyle(color: Colors.black, fontSize: 25),
              ),
              TextFormField(
                controller: gasolinaController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number, //so via celular
                validator: (value) => value!.isEmpty ? 'Informe o valor da Gasolina' : null,
                decoration: const InputDecoration(
                  labelText: 'Valor da Gasolina'
                ),
                style: const TextStyle(color: Colors.black, fontSize: 25),
              ),
              //botao para calcular
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 50),
                child: SizedBox(
                  height: 50,
                  child: RawMaterialButton(
                    onPressed: (){
                      //verificar se os campos tao preenchidos
                      if(_formKey.currentState!.validate()){
                        _calcular();//faz o calculo
                      }
                    },
                    fillColor: Colors.lightBlue[900],
                    child: const Text(
                      'Calcular',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),//caixa
                ),
                Text(
                  _resultado,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.lightBlue[900],fontSize: 25),
                )
            ], //inserir um icone
          ),
        ),
      )
    );
  }
}