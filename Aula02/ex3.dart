import 'dart:io';

void main(){
  print("Digite o primeiro número");
  // int. parse faz a conversão para numero inteiro
    int num1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo numero");
  int num2 = int.parse(stdin.readLineSync()!);
  int res = num1 + num2;
  print("Resultado = $res");
}