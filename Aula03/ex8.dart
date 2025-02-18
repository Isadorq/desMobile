import 'dart:io';

void main() {
  print("Digite a quantidade de litros comprados: ");
  double quantidadeLitros = double.parse(stdin.readLineSync()!);

  print("Digite o tipo de combustível (E para Etanol, D para Diesel, G para Gasolina): ");
  String tipoCombustivel = stdin.readLineSync()!.toUpperCase();

  double precoLitro = 0.0;
  double percentualDesconto = 0.0;

  if (tipoCombustivel == 'E') {
    precoLitro = 1.70;
    if (quantidadeLitros >= 15) {
      percentualDesconto = 0.04; 
    } else {
      percentualDesconto = 0.03; 
    }
  } else if (tipoCombustivel == 'D') {
    precoLitro = 2.00;
    if (quantidadeLitros >= 15) {
      percentualDesconto = 0.05; 
    } else {
      percentualDesconto = 0.03; 
    }
  } else if (tipoCombustivel == 'G') {
    precoLitro = 4.50;
    if (quantidadeLitros >= 20) {
      percentualDesconto = 0.03;  
    } else {
      percentualDesconto = 0.0;  
    }
  } else {
    print("Tipo de combustível inválido!");
    return;
  }

  double desconto = precoLitro * quantidadeLitros * percentualDesconto;
  
  double valorTotal = (precoLitro * quantidadeLitros) - desconto;
 
  print("O valor total a ser pago é: R\$ ${valorTotal.toStringAsFixed(2)}");
}
