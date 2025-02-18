import 'dart:io';

void main() {
  const double euro = 7.00;
  const double dolar = 6.56;
  const double franco = 4.35;

  print("Digite o valor em reais: ");
  double reais = double.parse(stdin.readLineSync()!);

  print("Escolha a moeda para conversão:");
  print("1. Euro");
  print("2. Dólar");
  print("3. Franco Suíço");

  print("Digite o número da opção desejada: ");
  int opcao = int.parse(stdin.readLineSync()!);

  double resultado;

  switch (opcao) {
    case 1:
      resultado = reais / euro;
      print("R\$ $reais é equivalente a EUR $resultado");
      break;
    case 2:
      resultado = reais / dolar;
      print("R\$ $reais é equivalente a USD $resultado");
      break;
    case 3:
      resultado = reais / franco;
      print("R\$ $reais é equivalente a CHF $resultado");
      break;
    default:
      print("Opção inválida! Tente novamente.");
      break;
  }
}
