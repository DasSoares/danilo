main() {
  List numeros = ['1', '6', '9', '4', '5', '10', '16', '15', '2'];

  var lista;

  for (var i = 0; i < numeros.length; i++) {
    lista = int.parse(numeros[i]);
  }

  //print(int.parse(numeros[0]));
  numeros.sort();

  print(lista);
}
