// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_app_imagine/Pagina/login_dart.dart';

class cadastro extends StatefulWidget {
  const cadastro({super.key});

  @override
  cadastroStatus createState() => cadastroStatus();
}

class Pagtela extends StatelessWidget {
  const Pagtela({super.key});

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

class cadastroStatus extends State<cadastro> {
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
          const Pagtela(),

          //
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 600.0,
                    height: 600.0,
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
                                    'CADASTRO',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),

                                  //Texto Form 1 (NOME)
                                  TextFormField(
                                    style: const TextStyle(color: Colors.white),
                                    decoration: const InputDecoration(
                                        labelText: 'Nome',
                                        labelStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(247, 212, 168, 1),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white),
                                        )),

                                    //validações 1
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Insira seu Nome';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      nome = value!;
                                    },
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
                                                const login()),
                                      );
                                    },
                                    child: const Text(
                                      'Já possui Conta? clique aqui',
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
                                                  const login()),
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(
                                          247, 212, 168, 1),
                                    ),
                                    child: const Text(
                                      'CADASTRAR',
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
