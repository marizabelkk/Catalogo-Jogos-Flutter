# 🎮 Catálogo de Jogos

Aplicativo desenvolvido em **Flutter** para a disciplina de **Códigos de Alta Performance - Mobile**.

O projeto consiste em um catálogo de jogos organizado em cards, utilizando a arquitetura **MVVM** e o **Provider** para gerenciamento de estado.

## 📱 Sobre o projeto

O aplicativo apresenta uma coleção de jogos em um grid com duas colunas. Cada card exibe a capa do jogo, seu nome, gênero e a opção de adicioná-lo aos favoritos.

Também é possível filtrar o catálogo para visualizar apenas os jogos que foram favoritados.

## ✨ Funcionalidades

- Exibição dos jogos em um `GridView` com duas colunas
- Cards com imagem, nome e gênero
- Imagens locais utilizando `Image.asset`
- Adicionar e remover jogos dos favoritos
- Filtro para visualizar somente os jogos favoritos
- Atualização automática da interface através do `ChangeNotifier`

## 🏗️ Arquitetura

O projeto utiliza o padrão **MVVM (Model-View-ViewModel)**:

- **Model:** representa os dados de cada jogo
- **ViewModel:** gerencia os jogos, favoritos, filtro e estado da aplicação
- **View:** responsável pela interface e exibição dos dados

O **Provider** é utilizado para conectar a View ao ViewModel e atualizar a interface quando o estado é alterado.

## 🛠️ Tecnologias utilizadas

- Flutter
- Dart
- Provider
- Material Design

## 📂 Estrutura principal

```text
lib/
├── models/
│   └── jogo_model.dart
├── view_models/
│   └── catalogo_view_model.dart
├── views/
│   └── home_view.dart
└── main.dart

assets/
└── images/
```

## 🎮 Jogos do catálogo

O catálogo contém:

- Coral Island
- CS GO
- League of Legends
- Minecraft
- The Sims 4
- Valorant

## 👩‍💻 Autora

**Maria Isabel Mariz**

Projeto desenvolvido como atividade avaliativa da disciplina de **Códigos de Alta Performance - Mobile**.

## 📸 Interface

<!-- Coloque aqui o print da aplicação -->

![Tela do Catálogo](assets/print_catalogo.png)