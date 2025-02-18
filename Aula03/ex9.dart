import 'dart:io';

void main() {
  print("Digite a quantidade de kWh consumidos: ");
  double kWh = double.parse(stdin.readLineSync()!);

  print("Digite o tipo de instalação (R para Residência, I para Indústria, C para Comércio): ");
  String tipoInstalacao = stdin.readLineSync()!.toUpperCase();

  double precoUnitario;
  if (tipoInstalacao == 'R') {
    if (kWh <= 500) {
      precoUnitario = 0.50;
    } else {
      precoUnitario = 0.70;
    }
  } else if (tipoInstalacao == 'C') {
    if (kWh <= 1000) {
      precoUnitario = 0.65;
    } else {
      precoUnitario = 0.60;
    }
  } else if (tipoInstalacao == 'I') {
    if (kWh <= 5000) {
      precoUnitario = 0.55;
    } else {
      precoUnitario = 0.50;
    }
  } else {
    print("Tipo de instalação inválido!");
    return;
  }
  double precoTotal = precoUnitario * kWh;
  print("O valor total a ser pago pela energia elétrica é: R\$ ${precoTotal.toStringAsFixed(2)}");
}
