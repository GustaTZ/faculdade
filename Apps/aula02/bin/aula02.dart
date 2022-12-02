void main(List<String> arguments) {
  var nomes = <String>['Edson', 'Gustavo', 'Maria'];
  print(nomes);
  //Acessando valores pelo indice
  print(nomes[0]);
  print(nomes[1]);
  print(nomes[2]);
  //Descobrindo o tamanho da lista
  print("Número de elementos na lista: ${nomes.length}");
  //Podemos percorrer uma lista item a item usando o FOR
  //Em dart existem dois tipos: 'for' e o 'for in'
  //FOR
  for (var i=0; i<nomes.length; i++){
    print('Índice $i => ${nomes[i]}');
  }
  for (var i=0; i<nomes.length; i++){
    print(nomes[i]);
  }
  //FOR IN
  //Percorre uma lista ate o ultimo item, sem a necessidade
  //de indicar o ponto de parada
  // for <var> in conjunto{comandos}
  for (var nome in nomes){
    print(nome);
  }
  var numeros=<int>[1,2,45,67,-9];
  for (var numeros in numeros){
    print(numeros);
  }
  //Manipulando itens na lista
  var lista = <String>[];
  //Inclusão de itens
  lista.add('Gustavo');
  lista.add('Edson');
  print(lista);
  //Adicionar dados em posição especifica
  lista.insert(0, 'Batata');
  lista.insert(3, 'Feijão');
  print(lista);
  //maracutaia
  var x=<String>['A','B','C'];
  var y=<String>['D','E','F'];

  for (var a in x){
    y.insert(y.length - x.length, a);//(0, a);
    print(y);
  }
  //ATIVIDADE
  //Fazer a junção das listas acima, finalizando ordenada

  //Inserindo varios elementos de forma "elegante"
  var frutas=<String>[];
  frutas
  ..add('Pêra')
  ..add('Banana')
  ..add('Abacate');
  print(frutas);
  //Outro jeito maneiro addAll()
  var bebidas=<String>[];
  bebidas.addAll(['Coca-Cola','Guarana']);
  print(bebidas);

  bebidas.insertAll(0, ['Sprite','Fanta Laranja']);
  print (bebidas);
  //Remover elementos
  bebidas.remove('Guarana');
  print(bebidas);
  bebidas.removeAt(1);
  print(bebidas);
  bebidas.removeLast();
  print(bebidas);

  //ATIVIDADE
  //Desenvolver um código que gere uma tabuada e armazene os valores
  //pares em uma lista e os impares em outra lista
  //Os valores devem estar de forma ordenada em ambas as lista
  for (int multiplicando = 1; multiplicando <= 2; multiplicando++) {
        print("\n\nTabuada do número $multiplicando");
        for (int contador = 1; contador <= 10; contador++) {
      print("$multiplicando * $contador = ${multiplicando * contador}");
    }
  }
  //Função anonima ou arrow function (remove)
  var names = <String>['Ana', 'Lucia', 'Edson', 'Pedro', 'Lucia', 'Tina', 'Mariana'];
  print(names);
  names.removeWhere((String name) => (name == 'Ana' || name == 'Tina'));
  print(names);
  //Usando o Contains
  names.removeWhere((String n) => ['Edson','Pedro'].contains(n));
  print(names);
  //Ordenar de forma crescente

  //print(names..sort());

  //Ordenar de forma decrescente

  //var xx =names..reversed;
  //print(xx.toList());

  //Melhorando o sistema de ordenação
  //names.sort((x,y)=>x.compareTo(y));
  //print(names);

  //Mesclagem de lista
  //Forma I
  var lista_x=<String>['Casa','Tapete'];
  var lista_y=<String>['Martelo','Prego'];
  lista_x.addAll(lista_y);
  print(lista_x);
  //Forma II
  var saida=[lista_x, lista_y].expand((e) => e).toList();
  print(saida);

  var valor = 3.12;
var c = valor * 3;
print('$c é ${c.runtimeType}');

  var xx =names..reversed;
  print(xx.toList());
  
  var 
}
