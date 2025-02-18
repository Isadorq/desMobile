import 'dart:io';

void main(){
  print("Digite o primeiro número: ");
    int num1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número: ");
    int num2 = int.parse(stdin.readLineSync()!);
  int res1 = num1 * num2;
  double res2 = res1 /2;
  print("A área é de: $res2");
}