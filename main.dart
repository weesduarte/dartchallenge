import 'dart:io';
import './func/funcao.dart';

void main() {
  stdout.write('Digite um número inteiro positivo: ');
  String? input = stdin.readLineSync();
  if (input != null) {
    // Verifica se o input é um número inteiro
    int? numero = int.tryParse(input);

    if (numero != null) {
      // Se for um número inteiro, verifica se é negativo ou zero
      if (numero <= 0) {
        print('Número inválido. Por favor, insira um número inteiro positivo.');
      } else {
        int resultado = somatorioDivisiveis(numero);
        print('O somatório dos números menores que $numero é $resultado');
      }
    } else {
      // Se não for um número inteiro, verifica se é um número decimal
      double? decimal = double.tryParse(input);

      if (decimal != null) {
        // Se for um número decimal, arredonda para o inteiro mais próximo
        int numeroArredondado = decimal.round();
        int resultado = somatorioDivisiveis(numeroArredondado);
        print(
            'O somatório dos números menores que $numeroArredondado é $resultado');
      } else {
        // Se não for um número decimal, é texto
        print(
            'Entrada inválida. Por favor, insira um número inteiro positivo.');
      }
    }
  } else {
    print('Entrada inválida. Por favor, insira um número inteiro positivo.');
  }
}
