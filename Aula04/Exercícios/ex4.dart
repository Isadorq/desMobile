// 4. Crie uma classe denominada “Produtos” com os seguintes
// parâmetros:
// Nome do produto
// Quantidade
// Preço do produto
// Tipo de comunicação
// Consumo de energia elétrica
// Essa classe de produtos deve ser a mãe de outras classes como
// fritadeira, televisão, ar-condicionado.
// As classes filhas devem possuir os seguintes métodos – Ligar,
// desligar, ajuste de temperatura com passagem de parâmetros para
// setpoint.

class Produtos {
  String? nome;
  int? quantidade;
  double? preco;
  String? tipoComunicacao;
  double? consumoEnergia;

  Produtos({this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia});

  void ligar() => print("Você ligou o produto $nome!");
  void desligar() => print("Você desligou o produto $nome!");
  void ajusteTemperatura(double setpoint) => print("Ajustando temperatura de $nome para $setpoint graus.");
}

class Fritadeira extends Produtos {
  Fritadeira({String? nome, int? quantidade, double? preco, String? tipoComunicacao, double? consumoEnergia})
      : super(nome: nome, quantidade: quantidade, preco: preco, tipoComunicacao: tipoComunicacao, consumoEnergia: consumoEnergia);
}

class Televisao extends Produtos {
  Televisao({String? nome, int? quantidade, double? preco, String? tipoComunicacao, double? consumoEnergia})
      : super(nome: nome, quantidade: quantidade, preco: preco, tipoComunicacao: tipoComunicacao, consumoEnergia: consumoEnergia);
}

class ArCondicionado extends Produtos {
  ArCondicionado({String? nome, int? quantidade, double? preco, String? tipoComunicacao, double? consumoEnergia})
      : super(nome: nome, quantidade: quantidade, preco: preco, tipoComunicacao: tipoComunicacao, consumoEnergia: consumoEnergia);
}

void main() {
  Fritadeira fritadeira = Fritadeira(nome: "Fritadeira Elétrica", quantidade: 10, preco: 200.0, tipoComunicacao: "Bluetooth", consumoEnergia: 1500);
  Televisao tv = Televisao(nome: "Televisão 4K", quantidade: 5, preco: 1500.0, tipoComunicacao: "Wi-Fi", consumoEnergia: 200);
  ArCondicionado arCondicionado = ArCondicionado(nome: "Ar Condicionado Split", quantidade: 2, preco: 2500.0, tipoComunicacao: "Controle remoto", consumoEnergia: 3500);

  fritadeira.ligar();
  fritadeira.ajusteTemperatura(180);

  tv.ligar();
  tv.ajusteTemperatura(50);

  arCondicionado.ligar();
  arCondicionado.ajusteTemperatura(22);
}
