// Crie uma classe abstrata “Máquina industrial” com os seguintes métodos:
// Nome – Nome da máquina
// Potência da máquina
// Status – booleano
// Métodos abstratos
// Ligar() – Um método abstrato que define como a máquina é ligada
// Desligar () – Método abstrato que define como a máquina é desligada

abstract class MaquinaIndustrial {
  String nome;
  int potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar();
  void desligar();

  void verificarStatus(int setpoint) {
    if (status && potencia >= setpoint) {
      print("A $nome está ligada!");
    } 
    else {
      print("A $nome está desligada.");
    }
  }
}

class Filha extends MaquinaIndustrial {
  Filha(String nome, int potencia, bool status) : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print("A máquina $nome foi ligada!");
    verificarStatus(1000);
  }

  @override
  void desligar() {
    status = false;
    print("A máquina $nome foi desligada!");
    verificarStatus(1000);
  }
}

void main() {
  Filha maquina1 = Filha("Máquina de Solda", 1500, false);
  maquina1.ligar();

  Filha maquina2 = Filha("Máquina de Torno", 900, false);
  maquina2.desligar();
}