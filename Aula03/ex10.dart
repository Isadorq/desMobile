import 'dart:io';

double calcular(double num1, double num2, String operacao) {
  double resultado;

  switch (operacao) {
    case 'a':
      resultado = num1 + num2;
      break;
    case 's': 
      resultado = num1 - num2;
      break;
    case 'm':
      resultado = num1 * num2;
      break;
    case 'd': 
      if (num2 != 0) {
        resultado = num1 / num2;
      } else {
        print("Erro: Divisão por zero não permitida!");
        return double.nan;  
      }
      break;
    default:
      print("Operação inválida!");
      return double.nan;
  }

  return resultado;
}

void main() {
  print("Digite o primeiro número: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Digite o segundo número: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Escolha a operação: ");
  print("a - Adição");
  print("s - Subtração");
  print("m - Multiplicação");
  print("d - Divisão");

  String operacao = stdin.readLineSync()!.toLowerCase();

  double resultado = calcular(num1, num2, operacao);

  if (!resultado.isNaN) {
    print("O resultado da operação é: $resultado");
  }
}