import 'dart:io';

void main() {
  print("Digite o valor médio do primeiro modelo de carro: ");
  double modelo1 = double.parse(stdin.readLineSync()!);

  print("Digite o valor médio do segundo modelo de carro: ");
  double modelo2 = double.parse(stdin.readLineSync()!);

  print("Digite o valor médio do terceiro modelo de carro: ");
  double modelo3 = double.parse(stdin.readLineSync()!);

  double maisCaro = modelo1;
  double maisBarato = modelo1;

  if (modelo2 > maisCaro) {
    maisCaro = modelo2;
  }
  if (modelo3 > maisCaro) {
    maisCaro = modelo3;
  }

  if (modelo2 < maisBarato) {
    maisBarato = modelo2;
  }
  if (modelo3 < maisBarato) {
    maisBarato = modelo3;
  }

  print("O modelo mais caro custa: R\$ $maisCaro");
  print("O modelo mais barato custa: R\$ $maisBarato");
}
