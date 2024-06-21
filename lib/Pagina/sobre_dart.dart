// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_app_imagine/Utilizador/Eventos_presentes.dart';

class Detalhes extends StatelessWidget {
  const Detalhes(
      {super.key,
      required this.social}); //estou transformando essa constante em super chave.

  final EventoSocial social;

/* - PALETA DE CORES - 
Color.fromRGBO(247, 212, 168, 1),
Color.fromRGBO(247, 170, 25, 1),
Color.fromRGBO(247, 124, 15, 1),
Color.fromRGBO(245, 74, 15, 1),
Color.fromRGBO(161, 0, 20, 1),
*/

  @override

  //faz uma barra em cima com a pag que o usuario entrou
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 212, 168, 150),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 74, 15, 70),
        elevation: 1,
        title: const Padding(
          // nome da pagina que o usuario entrou
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'SOBRE O EVENTO',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color.fromRGBO(161, 0, 20, 1),
            ),
          ),
        ),
        centerTitle: true,
      ),

      // coloca um icone, nome, data e descrição do evento selecionado
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 450,
              height: 200,
              child: Image.asset(
                social.icone,
                width: 450,
                height: 200,
              ),
            ),
            SizedBox(
              width: 500,
              height: 520,
              child: Card(
                margin: const EdgeInsets.all(0.0),
                color: const Color.fromRGBO(247, 212, 168, 1),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 1),
                    Text(
                      social.nome,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),

                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text(
                        social.descri,
                        style: const TextStyle(
                            fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    //DATA
                    const SizedBox(height: 20),
                    Text(
                      social.data,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),

                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        social.obs,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Color.fromRGBO(161, 0, 20, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    // cria um botao que vai direto no site oficial do evento
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // foreground
                        backgroundColor:
                            const Color.fromRGBO(245, 74, 15, 1), // background
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // Ação ao clicar no botão
                      },
                      child: const Text('Conheça Mais'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
