class JogoModel {
  String nome;
  String imagem;
  String genero;
  bool favorito;

  JogoModel(
      {required this.nome,
      required this.imagem,
      required this.genero,
      this.favorito = false});
}
