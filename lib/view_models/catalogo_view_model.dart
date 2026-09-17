import 'package:flutter/material.dart';
import '../models/jogo_model.dart';

class CatalogoViewModel extends ChangeNotifier {
  List<JogoModel> jogos = [
    JogoModel(
      nome: 'Coral Island',
      imagem: 'assets/images/coralisland.png',
      genero: 'Simulação',
    ),
    JogoModel(nome: 'CS GO', imagem: 'assets/images/cs.jpg', genero: 'FPS'),
    JogoModel(
      nome: 'League Of Legends',
      imagem: 'assets/images/lol.jpg',
      genero: 'MOBA',
    ),
    JogoModel(
      nome: 'Minecraft',
      imagem: 'assets/images/mine.jpg',
      genero: 'Sandbox',
    ),
    JogoModel(
      nome: 'The Sims 4',
      imagem: 'assets/images/ts4.png',
      genero: 'Simulação',
    ),
    JogoModel(
      nome: 'Valorant',
      imagem: 'assets/images/valo.jpg',
      genero: 'FPS',
    ),
  ];

  bool mostrarFavoritos = false;

  List<JogoModel> get jogosFiltrados {
    if (mostrarFavoritos) {
      return jogos.where((jogo) => jogo.favorito).toList();
    }

    return jogos;
  }

  void alterarFavorito(JogoModel jogo) {
    jogo.favorito = !jogo.favorito;
    notifyListeners();
  }

  void alterarFiltro() {
    mostrarFavoritos = !mostrarFavoritos;
    notifyListeners();
  }
}