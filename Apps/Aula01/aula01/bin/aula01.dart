import 'dart:math';

void main(List<String> arguments) {
  //Declaração de variaveis; tipo nome = valor
  String curso = 'TADS';
  int qtdAlunos = 102;
  double mensalidade = 250.50;
  bool temVaga = true;


  print(curso); //print (value) onde value é a variavel ou valor
  print(qtdAlunos);
  print(mensalidade);
  print(temVaga);
  //Conversão de Int para String
  //var.toString
  print('O curso '+curso+' tem '+qtdAlunos.toString()+' alunos');
  //Usando interpolação (${})
  print('O curso de $curso tem $qtdAlunos alunos');
  //Mostre o valor do faturamento da turma
  print('Faturamento: ${mensalidade*qtdAlunos}');
  //E se eu precisar guardar o valor do faturamento e mostrar depois?
  double faturamento = mensalidade*qtdAlunos;
  print('Faturamento $faturamento');
  //Tipos especiais: var e dynamic
  //var - assume o tipo da var no momento da atribuição final
  var exemplo1='Gusta';//String
  var exemplo2=12.50;//Double
  //Como saber o tipo de um var?
  print('$exemplo1: ${exemplo1.runtimeType}');
  print('$exemplo2: ${exemplo2.runtimeType}');
  //dynamic - assume o tipo a partir do valor atribuido
  dynamic exemplo3='Gusta';
  print('$exemplo3: ${exemplo3.runtimeType}');
  exemplo3=12.50;
  print('$exemplo3: ${exemplo3.runtimeType}');

  //ATIVIDADE
  //FAÇA UM CÓDIGO QUE CALCULE A MEDIA PARA TRÊS VAR, MOSTRANDO O PASSO-A-PASSO
  //PARA A CONSTRUÇÃO DO ALGORIMITO. EXEMPLO:
  //SAÍDA: A soma entre v1 (2), v2(5), v3(8) é: 15
  //       A media entre v1(2), v2(5), v3(8) é: 5

  int v1=2;
  int v2=5;
  int v3=8;
  int res=(v1+v2+v3);

  print('A soma entre v1, v2 e v3 é: ${res}');
  print('A media entre v1, v2 e v3 é: ${res/3}');

}
