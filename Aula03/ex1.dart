import 'dart:io'; // permite ao usuario entrar com dados

void main(){
  print("Digite seu nome:");   // exibe a mensagem solicitando o usuario

  String nome = stdin.readLineSync()!;
  print("Digite sua idade:");
  String idade = stdin.readLineSync()!;

  print("Nome: $nome  idade: $idade");  
}