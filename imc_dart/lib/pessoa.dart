class pessoa {
  String _nome = '';
  double? _altura;
  double? _peso;

  void setNome(String nome) {
    _nome = nome;
  }

  getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double? getAltura() {
    return _altura;
  }

  double? setPeso() {
    return _peso;
  }
}
