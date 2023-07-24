import 'package:cripto_moedas_flutter/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'images/bitcoin.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 164603.00),
    Moeda(
        icone: 'images/bitcoin.png',
        nome: 'Real',
        sigla: 'BRL',
        preco: 123.00),
    Moeda(
        icone: 'images/bitcoin.png',
        nome: 'Pesos',
        sigla: 'CLP',
        preco: 44561.00),
  ];
}
