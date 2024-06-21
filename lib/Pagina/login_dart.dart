// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_app_imagine/Pagina/tela_initial.dart';
import 'package:flutter_app_imagine/Pagina/cadastro_dart.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  loginState createState() => loginState();
}

class Pagtela2 extends StatelessWidget {
  const Pagtela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
/* - PALETA DE CORES - 
Color.fromRGBO(247, 212, 168, 1),
Color.fromRGBO(247, 170, 25, 1),
Color.fromRGBO(247, 124, 15, 1),
Color.fromRGBO(245, 74, 15, 1),
Color.fromRGBO(161, 0, 20, 1),
*/

        //Bola Maior
        Positioned(
          left: -100,
          top: -150,
          right: 180,
          child: Container(
            width: 350,
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(247, 170, 25, 1),
            ),
          ),
        ),
        Positioned(
          left: 150,
          top: -80,
          child: Container(
            width: 350,
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(247, 124, 15, 10),
            ),
          ),
        ),
      ],
    );
  }
}

class loginState extends State<login> {
  final Infos = GlobalKey<FormState>();

  String nome = '';
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 212, 168, 200),
      body: Stack(
        children: [
          const Pagtela2(),

          //
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 600.0,
                    height: 500.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          margin: const EdgeInsets.all(30.0),
                          color: const Color.fromRGBO(245, 74, 15, 30),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Form(
                              key: Infos,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  /* INSERÇÃO DE TUDO QUE ESTARÁ DENTRO DO FORMULÁRIO

                                  -ICONE DE PESSOA (CADASTRO/LOGIN)
                                  -TÍTULO DE PAG (CADASTRO/LOGIN)
                                  -TEXTFORM 1 (NOME)
                                  -TEXTFORM 2 (EMAIL)
                                  TEXTFORM 3 (SENHA)
                      
                                  */

                                  //Ícone da Tela
                                  const Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Colors.black,
                                  ),

                                  //Texto Título (cadastro e login)
                                  const Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),

                                  //Texto Form 2 (EMAIL)
                                  TextFormField(
                                    style: const TextStyle(color: Colors.white),
                                    decoration: const InputDecoration(
                                      labelText: 'E-mail',
                                      labelStyle: TextStyle(
                                        color: Color.fromRGBO(247, 212, 168, 1),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,

                                    //Validações 2
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Insira um email';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      email = value!;
                                    },
                                  ),

                                  //Text Form 3 (SENHA)
                                  TextFormField(
                                    style: const TextStyle(color: Colors.white),
                                    decoration: const InputDecoration(
                                      labelText: 'Senha',
                                      labelStyle: TextStyle(
                                        color: Color.fromRGBO(247, 212, 168, 1),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),

                                    //validações 3
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'insira uma senha';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      senha = value!;
                                    },
                                  ),

                                  //
                                  const SizedBox(height: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const cadastro()),
                                      );
                                    },
                                    child: const Text(
                                      'Não possui Conta? clique aqui',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (Infos.currentState!.validate()) {
                                        Infos.currentState!.save();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Home()),
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          247, 212, 168, 1),
                                    ),
                                    child: const Text(
                                      'ENTRAR',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




/*
// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});
  // Define o widget de estado
  @override
  loginState createState() =>
      loginState(); // Cria uma instância que gere o widget
}

// ignore: camel_case_types
class loginState extends State<login> {
  final infos = GlobalKey<
      FormState>(); // é uam chave global para indentificar o form e o estado

  // Declara as variaveis
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFB2A5D4), // Use the background color from the image
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.person,
                size: 100,
                color: Colors.white,
              ),

              // Adiciona um texto embaixo do icone
              const SizedBox(height: 16),
              const Text(
                'BEM VINDO(A) DE VOLTA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              // Adiciona uma Box para colocar o Form
              const SizedBox(height: 16),
              Card(
                margin: const EdgeInsets.all(16.0),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: infos,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // Adiona um form pra a entrada de texto
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'E-mail'),
                          keyboardType: TextInputType.emailAddress,

                          // Se o valor for null(vazio/nada) ele ira dar um aviso falando para adicionar algum texto
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'insira seu email';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            email = value!;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Senha'),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Insira sua senha';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            senha = value!;
                          },
                        ),

                        // Adiciona um child text para que a pessoa que não tem conta, acessar a pag de cadastro.
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const cadastro()),
                            );
                          },
                          // Adiona um text pequena embaixo do form para o não cadastrado
                          child: const Text(
                            'Não tem conta? Faça o cadastro',
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),

                        // Feito a entrada de texto no form, ele direciona o usuario a pag home atraves do MaterialPageRoute
                        const SizedBox(height: 20),
                        ElevatedButton(
                          // Cria um botão para ir a pag home
                          onPressed: () {
                            if (infos.currentState!.validate()) {
                              infos.currentState!.save();
                              // Processa o email e senha
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()),
                              );
                            }
                          },
                          // ignore: sort_child_properties_last
                          child: const Text('Logar'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/