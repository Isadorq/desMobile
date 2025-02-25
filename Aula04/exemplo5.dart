// Conceito de herança
// 24.02.2025

class Animal {
  String? nome;
  int? idade;
  void dormir(){
    print('O animal ${nome} esta dormindo');
  }
}

//Classe filha

class Cachorro extends Animal{
  void latir(){
    print("O animal ${nome} está latindo");
  }
}

class Tigre extends Animal{
  String? cor;
  void atacar(){
    print("O animal tigre $nome atacou");
  }
}

void main(){
  // Cria objeto Rocky a partir da classe cachorro
  Cachorro Rocky = Cachorro();
  Rocky.nome="Rocky";
  Rocky.idade=2;
  Rocky.latir();
  Rocky.dormir();

  Tigre Memphis = Tigre();
  Memphis.cor = "Branco";
  Memphis.idade = 30;
  Memphis.atacar();
} 