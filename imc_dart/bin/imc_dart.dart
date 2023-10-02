import 'dart:convert';
import 'dart:io';
import 'package:imc_dart/imc_dart.dart' as imc_dart;

void main(List<String> arguments) {
  print('Bem vindo à calculadora de índice de massa corporal.');
  print('Digite seu nome:');
  String? nome = stdin.readLineSync(encoding: utf8);
  print('Digite seu peso em KGs:');
  double peso = double.parse(stdin.readLineSync()!);
  print('Digite sua altura em metros:');
  double altura = double.parse(stdin.readLineSync()!);

  double? result = imc_dart.calcularImc(peso, altura);

  print('Nome:$nome');
  print('Peso: $peso');
  print('Altura:$altura');

  if (result != null) {
    int casasDecimais = 2;
    String resultadoFormatado = result.toStringAsFixed(casasDecimais);

    print('Seu IMC é de: $resultadoFormatado');
  } else {
    print('Erro ao calcular o IMC');
  }

  if (result! < 16) {
    print('ALERTA, magreza grave!');
  } else if (result >= 16 && result <= 17) {
    print('Magreza moderada.');
  } else if (result > 17 && result <= 18.5) {
    print('Magreza leve.');
  } else if (result > 18.5 && result <= 25) {
    print('Saudável.');
  } else if (result > 25 && result <= 30) {
    print('Sobrepeso');
  } else if (result > 30 && result <= 35) {
    print('Obesidade grau 1.');
  } else if (result > 35 && result <= 40) {
    print('Obesidade grau 2(!Severa!)');
  } else if (result > 40) {
    print('Obesidade grau 3(!Obesidade mórbida!)');
  } else {
    ('ERRO!');
  }
}
