import 'package:flutter/material.dart';
import 'package:flutter_app_imagine/Pagina/cadastro_dart.dart';
//import 'package:flutter_app_imagine/Pagina/cadastro_dart.dart';
// import 'package:flutter_app_imagine/Pagina/favorito_dart.dart';
//import 'package:flutter_app_imagine/Pagina/tela_initial.dart';
// import 'package:flutter_app_imagine/Pagina/favorito_dart.dart';
// import 'package:flutter_app_imagine/pagina/cadastro_dart.dart';
// import 'package:flutter_app_imagine/pagina/login_dart.dart';

void main() {
  runApp(
      // Colocando o provider, ele se tornar um fornecedor da minha repofavs para o meu MyApp
      // ChangeNotifierProvider(
      // create: (context)=> repofavs(),
      //child:
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMAGINE EVENTS', // Coloca um nome para o aplicativo
      theme: ThemeData(// Define o estilo e tema da aplicação
          ),

      home:
          const cadastro(), // Seta a página principal que irá aparecer quando iniciar a aplicação
    );
  }
}
