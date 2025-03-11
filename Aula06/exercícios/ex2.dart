// Crie duas subclasses concretas de máquina industrial Prensa e Robô solda.
// Prensa deve ter um atributo adicional chamado “Pressão em toneladas” e os métodos ligar
// e desligar devem exibir mensagens adequadas.
// Robô solda deve ter um atributo chamado tipo de solda(String) para especificar o tipo de
// solda que realiza. Os métodos ligar e desligar devem exibir mensagens adequadas.

class MaquinaIndustrial {
  String nome;
  int potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar(){
    print("Produto ligado!");
  }
  void desligar(){
    print("Produto desligado!");
  }

}

class Prensa extends MaquinaIndustrial{
  int pressao;

  Prensa(String nome, int potencia, bool status, this.pressao): super(nome, potencia, status);

  void ligar(){
    int setpoint =100;
    if 
  }
}