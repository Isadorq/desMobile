/*
exemplo polimorfismo

10.03.2025

*/

// Classe pai
class Animal{
  
  void fazerSom(){
    print("O animal faz som");
  }
}

// Cria a classe filha

class Cachorro extends Animal {
  // polimorfismo

  @override
  void fazerSom() {
    print("O cachorro late: au au ");
  }
}

class Gato extends Animal {
  @override
  void fazerSom() {
    print("O gato mia");
  }
}

void main(){
  Animal meuanimal = Cachorro();
  meuanimal.fazerSom();
  Animal meuanimal1 = Gato();
  meuanimal1.fazerSom();
}