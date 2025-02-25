// 2. Crie uma classe “Filha” com o tipo de animal pássaro, cachorro, tigre, peixe e o atributo:
// peso, métodos acordou, dormiu.

class Animal{
  String? nome;
  int? idade;
  String? cor;
  String? raca;
  
  void dormiu(){
    print("O $nome dormiu.");
  }

  void acordou(){
    print("O $nome acordou.");
  }

}

class Passaro extends Animal{
  int? peso;

  void info (){
    print('nome: $nome; idade: $idade; cor: $cor; raça: $raca, peso: $peso g');
  }
}

class Cachorro extends Animal{
  int? peso;

  void info (){
    print('nome: $nome; idade: $idade; cor: $cor; raça: $raca, peso: $peso kg');
  }
}

class Tigre extends Animal{
  int? peso;

  void info (){
    print('nome: $nome; idade: $idade; cor: $cor; raça: $raca, peso: $peso kg');
  }
}

class Peixe extends Animal{
  int? peso;

  void info (){
    print('nome: $nome; idade: $idade; cor: $cor; raça: $raca, peso: $peso g');
  }
}

void main(){
  Passaro Biu = Passaro();
  Biu.nome = "Biu";
  Biu.idade = 4;
  Biu.cor = "Amarelo";
  Biu.raca = "Periquito";
  Biu.peso = 40;
  Biu.info();
  Biu.dormiu();
  
  Cachorro Marcelo = Cachorro();
  Marcelo.nome = "Marcelo";
  Marcelo.idade = 10;
  Marcelo.cor = "Preto";
  Marcelo.raca = "Mestiço";
  Marcelo.peso = 25;
  Marcelo.info();
  Marcelo.dormiu();

  Tigre Jorge = Tigre();
  Jorge.nome = "Jorge";
  Jorge.idade = 20;
  Jorge.cor = "Listrado";
  Jorge.raca = "Bengala";
  Jorge.peso = 90;
  Jorge.info();
  Jorge.acordou();

  Peixe Palhaco = Peixe();
  Palhaco.nome = "Palhaço";
  Palhaco.idade = 3;
  Palhaco.cor = "Laranja";
  Palhaco.raca = "Palhaço";
  Palhaco.peso = 25;
  Palhaco.info();
  Palhaco.acordou();
}