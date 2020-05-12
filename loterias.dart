import 'dart:math';

class Variaveis {
  int qdeApostas = 1;
  int qdeDezenas = 15;
  int qdeTotal = 26;

  String dezenas = '';
}

void main() {
  Variaveis v = new Variaveis();

  for (var i = 1; i <= v.qdeApostas; i++) {
    String jogos = '';
    String dezena;

    for (var j = 1; j < v.qdeDezenas; j++) {
      while (true) {
        dezena = '00' + GetRandom(v.qdeTotal).toString();
        dezena = dezena.substring(dezena.length - 2);

        if (dezena != '00') {
          if (jogos.indexOf(dezena) < 0) {
            break;
          }
        }
      }

      if (jogos.length > 0) {
        jogos += ' ';
      }

      v.dezenas = dezena;

      //jogos += '[' + OrdenaLista(dezena) + ']';
      jogos += OrdenaLista(dezena);
    }

    if (i > 1) {
      print('\n${jogos}');
    } else {
      print('${jogos}');
    }
  }
}

int GetRandom(int max) {
  Random gerador = new Random();
  return gerador.nextInt(max);
}

String OrdenaLista(String list) {
  List<String> lista = [list.split(' [$list] ').toString()];
  
  lista.sort();

  return lista.toString();
}
