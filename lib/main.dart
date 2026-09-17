import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/catalogo_view_model.dart';
import '../views/home_view.dart';

//Aluna: Maria Isabel Mariz
//Matrícula:03354801

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CatalogoViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catálogo de Jogos',
      home: const HomeView(),
    );
  }
}