//  3. Crie uma classe denominada “Máquinas” com os seguintes atributos:
// Nome da máquina
// Quantidade de eixos
// Rotações por minuto
// Consumo de energia elétrica
// Essa classe deve ser a mãe de outras classes.
// Criar classe denominada furadeira herdando o nome da máquina, rotações por minuto,
// consumo de energia elétrica.
// Criar métodos para ligar, desligar a máquina e um método para ajustar a velocidade de
// rotação da máquina.

class Maquina {
  String? nome;
  int? qntd;
  int? rotacao;
  int? consumo;

  void desligar() {
    print("Você desligou a máquina $nome!");
  }

  void ligar() {
    print("Você ligou a máquina $nome!");
  }

  void ajustar() {
    print("Você ajustou a velocidade de rotação da máquina $nome!");
  }
}

class Furadeira extends Maquina {
  Furadeira({String? nome, int? rotacao, int? consumo}) {
    this.nome = nome;
    this.rotacao = rotacao;
    this.consumo = consumo;
  }

  void info() {
    print("Nome: $nome; Rotação por minuto: $rotacao; Consumo: $consumo");
  }
}

void main() {
  Furadeira Fura = Furadeira(nome: "Fura", rotacao: 100, consumo: 1000);
  Fura.qntd = 30;

  Fura.info();
  Fura.ligar();
  Fura.ajustar();
}