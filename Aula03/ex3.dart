import 'dart:io';

void main() {
  print("Digite o valor do salário bruto: ");
  double salarioBruto = double.parse(stdin.readLineSync()!);

  double descontoImpostos = salarioBruto * 0.10;
  double bonificacao = salarioBruto * 0.20;

  double salarioLiquido = salarioBruto - descontoImpostos + bonificacao;

  print("O salário líquido é de: R\$ $salarioLiquido");
}
