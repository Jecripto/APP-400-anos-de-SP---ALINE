// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_app_imagine/Utilizador/eventos_gerais.dart';
import 'package:flutter_app_imagine/Utilizador/Eventos_presentes.dart';
import 'package:flutter_app_imagine/Pagina/sobre_dart.dart';
import 'package:flutter_app_imagine/Pagina/login_dart.dart';
import 'package:flutter_app_imagine/Pagina/tela_initial.dart';

class favorito extends StatefulWidget {
  const favorito({super.key});

  @override
  FavoritoState createState() => FavoritoState();
}

/* - PALETA DE CORES - 
Color.fromRGBO(247, 212, 168, 1),
Color.fromRGBO(247, 170, 25, 1),
Color.fromRGBO(247, 124, 15, 1),
Color.fromRGBO(245, 74, 15, 1),
Color.fromRGBO(161, 0, 20, 1),
*/

class FavoritoState extends State<favorito> {
  int _selectedIndex = 0;
  List<EventoSociais> selecionada = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (_selectedIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } else if (_selectedIndex == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const login()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<EventoSocial> detalhesEvento = [
      //BGS (BrasilGameShow)
    ];

    //constroi a estrutura do aplicativo (corpo)
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 212, 168, 180),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 74, 15, 70),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Text(
            'FAVORITOS',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color.fromRGBO(161, 0, 20, 1),
            ),
          ),
        ),
        centerTitle: true,
      ),

//ABAIXO Lógica, acima a barra
      // constroi uma listView que armazena qualquer coisa em uma lista de todos os eventos que tem
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          final evento = detalhesEvento[index];
          return ListTile(
            // faz quando selecionado o evento ele ficar com um aspecto com cantos arredondados
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            leading: (selecionada.contains(EventoSocial.tabela))
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(
                    width: 80,
                    height: 60,
                    child: Image.asset(evento.icone),
                  ),

            //tamanho do texto em titulo e data.
            title: Text(
              evento.nome,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic),
            ),
            trailing: Text(
              evento.data,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detalhes(social: evento),
                ),
              );
            },
          );
        },
        padding: const EdgeInsets.all(20),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: detalhesEvento.length,
      ),

      // Navegação do APP
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'INICIO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'FAVORITO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'SAIR',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(247, 212, 168, 1),
        backgroundColor: const Color.fromRGBO(245, 74, 15, 70),
        onTap: _onItemTapped,
      ),
    );
  }
}

/* - PALETA DE CORES - 
Color.fromRGBO(247, 212, 168, 1),
Color.fromRGBO(247, 170, 25, 1),
Color.fromRGBO(247, 124, 15, 1),
Color.fromRGBO(245, 74, 15, 1),
Color.fromRGBO(161, 0, 20, 1),
*/

class FavoritoDetal extends StatelessWidget {
  const FavoritoDetal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: const Center(
        child: Text('Detalhes da tela'),
      ),
    );
  }
}

/*
// -- Instanciando o favorito e super chave da mesma --  
class Favorito extends StatefulWidget {
  const Favorito({super.key});

  @override
  FavoritoState createState() => FavoritoState();
}


// - ICONE DE OUTRA Página, fins de TESTE --
  IconButton(
              onPressed: onRemove,
              icon: const Icon(
                Icons.close,
                color: Colors.red,
                size: 20, // Reduzido para 20
              ),
            ),
*/
