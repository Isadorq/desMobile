import 'dart:io';

void main() {
  print("Digite a nota do primeiro aluno: ");
  double nota1 = double.parse(stdin.readLineSync()!);

  print("Digite a nota do segundo aluno: ");
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  print("A média do aluno é: $media");

  if (media >= 7) {
    print("Aluno Aprovado!");
  } else if (media >= 4 && media < 7) {
    print("Aluno em Exame.");
  } else {
    print("Aluno Reprovado.");
  }
}