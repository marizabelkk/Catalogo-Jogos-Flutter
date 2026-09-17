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
          backgroundColor: Colors.grey[200],

          appBar: AppBar(
            title: const Text(
              'Catálogo de Jogos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,

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
            padding: const EdgeInsets.all(12),

            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 390,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),

            itemCount: viewModel.jogosFiltrados.length,

            itemBuilder: (context, index) {
              var jogo = viewModel.jogosFiltrados[index];

              return Card(
                child: Column(
                  children: [
                    Image.asset(
                      jogo.imagem,
                      height: 285,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    const SizedBox(height: 8),

                    Text(
                      jogo.nome,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 3),

                    Text(
                      jogo.genero,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        viewModel.alterarFavorito(jogo);
                      },
                      icon: Icon(
                        jogo.favorito
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: jogo.favorito
                            ? Colors.red
                            : Colors.grey,
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