import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/catalogo_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CatalogoViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Catálogo de Jogos'),
            actions: [
              IconButton(
                onPressed: () {
                  viewModel.alterarFiltro();
                },
                icon: Icon(
                  viewModel.mostrarFavoritos
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
              ),
            ],
          ),

          body: GridView.builder(
            padding: const EdgeInsets.all(10),

            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 350,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),

            itemCount: viewModel.jogosFiltrados.length,

            itemBuilder: (context, index) {
              var jogo = viewModel.jogosFiltrados[index];

              return Card(
                child: Column(
                  children: [
                    Image.asset(
                      jogo.imagem,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    const SizedBox(height: 5),

                    Text(
                      jogo.nome,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),

                    Text(jogo.genero),

                    IconButton(
                      onPressed: () {
                        viewModel.alterarFavorito(jogo);
                      },
                      icon: Icon(
                        jogo.favorito
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}