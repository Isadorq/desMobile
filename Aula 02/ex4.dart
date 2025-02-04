import 'dart:io';

void main(){
  print("Digite o primeiro número");
  // var tipo de dado dinamico que faz a inferencia do tipo de dado como
  // é digitado
    var num1 = stdin.readLineSync()!;
  print("Digite o segundo numero");
  var num2 = stdin.readLineSync()!;
  int res = int.parse(num1)+ int.parse(num2);
  print("Resultado = $res");
}