// ignore_for_file: prefer_const_constructors,, file_names

import 'package:flutter/material.dart';
import 'package:flutter_app_imagine/Utilizador/Eventos_presentes.dart';
import 'package:flutter_app_imagine/Pagina/sobre_dart.dart';

class EventoSociais extends StatelessWidget {
  //Lista de cada coisa e detahe que o evento pode ter (parecido com php pelo menos eu achei).
  final List<EventoSocial> detalhesEvento = [
    //BGS (BrasilGameShow)
    EventoSocial(
        'image/BGS.jpg',
        'BrasilGameShow',
        '10/06/2024 a 14/06/2024',
        'A variar',
        'A Brasil Game Show (BGS) é a maior feira de games da América Latina, realizada anualmente em São Paulo. Em 2024, o evento ocorrerá no Expo Center Norte. A BGS reúne desenvolvedores, fabricantes, editores, jogadores e entusiastas dos jogos eletrônicos, oferecendo lançamentos de jogos, palestras, campeonatos de eSports, competições de cosplay e áreas de experimentação de jogos. É uma oportunidade única para fãs e profissionais se atualizarem sobre as tendências e novidades do evento',
        'OBS: As data podem estar alteradas, confira no site oficial as datas e locais disponiveis '),
    //Comic Con Experience
    EventoSocial(
        'imagens/Comic.jpg',
        'Comic Con Experience',
        '05/12/2024 a 08/12/2024',
        'em Dezembro',
        'A Comic Con Experience (CCXP) é uma das maiores convenções de cultura pop do mundo, realizada anualmente no São Paulo Expo. O evento reúne fãs de quadrinhos, cinema, TV, games e cosplay, com painéis de celebridades, exibições exclusivas, sessões de autografos e concursos de cosplay. A CCXP também conta com o Artists Alley, onde artistas independentes expõem suas obras.',
        'OBS: As data podem estar alteradas, confira no site oficial as datas e locais disponiveis  '),

    //Exposição "Anjos do Holocausto"
    EventoSocial(
        'imagens/anjos.png',
        'EXPOSIÇÃO “ANJOS DO HOLOCAUSTO"',
        '14/06/2024 a 25/08/2024',
        'Único',
        'A exposição "Anjos do Holocausto" é uma obra do artista plástico brasileiro Arthur Scovino. Ela será realizada na Galeria André, em São Paulo. Scovino é conhecido por suas obras que abordam temas históricos e sociais, utilizando diferentes técnicas e materiais para expressar suas mensagens.',
        'OBS: As data podem estar alteradas, confira no site oficial as datas e locais disponiveis  '),

    //Masp Museu das Artes
    EventoSocial(
        'imagens/Masp.jpeg',
        'Museu da Arte de São Paulo Assis Chateubriand',
        'Terça a Sábado',
        'Sempre disponível nos dias listados',
        'O Museu de Arte de São Paulo Assis Chateaubriand, conhecido como MASP, é um dos principais museus de arte da América Latina. Localizado na Avenida Paulista, em São Paulo, Brasil, o MASP é famoso por sua arquitetura modernista e pela impressionante coleção de arte, que abrange desde obras renascentistas até contemporâneas.',
        'OBS: As data podem estar alteradas, confira no site oficial as datas e locais disponiveis '),
    //lollapaluza 2025
    EventoSocial(
        'imagens/lola.jpg',
        'Lollapalooza 2025',
        '28/03/2025 a 30/03/2025',
        'em Março',
        'O Lollapalooza é um dos maiores festivais de música do mundo, conhecido por reunir uma diversidade de artistas e estilos musicais em um único evento. Em São Paulo, o Lollapalooza geralmente acontece no Autódromo de Interlagos, um espaço amplo e icônico que proporciona uma experiência única aos fãs de música. ',
        'OBS: As data podem estar alteradas, confira no site oficial as datas e locais disponiveis '),

    //Carnaval em São Paulo
    EventoSocial(
        'imagens/Carnaval.png',
        'Carnaval em São Paulo',
        'Em fevereiro a Começo de Março',
        'Geralmente em Fevereiro',
        'O Carnaval de São Paulo é uma das maiores comemorações de festas mais vibrantes e coloridas do mundo, destacando-se pelos desfiles das escolas de samba no Sambódromo do Anhembi e pelos blocos de rua espalhados pela cidade, que celebram a diversidade cultural com muita música e animação',
        'OBS: As data podem estar alteradas, confira no site oficial as datas e locais disponiveis'),

    //Fórmula E
    EventoSocial(
        'imagens/formula E.jpg',
        'Fórmula E Uma Nova Temporada',
        '04/12/2024',
        'A variar',
        'A corrida de abertura da temporada 35 da Fórmula E em São Paulo é um evento emocionante que ocorre no Parque Olímpico. Carros elétricos de alta tecnologia competem em um circuito urbano sonoro, atraindo fãs de automobilismo para assistir corridas elétricas intensas e sustentáveis ​​no coração da cidade. ',
        'OBS: As data podem estar alteradas, confira no site oficial as datas e locais disponiveis'),

    //Maratona Internacional de São Paulo 2025
    EventoSocial(
        'imagens/maratona Intl.jpg',
        'Maratona Internacional de São Paulo (29°Edição)',
        '25/01/2025',
        'A variar',
        'A Maratona de São Paulo é um dos eventos esportivos mais significativos da cidade, atraindo corredores de todo o Brasil e do mundo. Em 2025, a maratona provavelmente ocorrerá em um percurso que atravessa diversos pontos icônicos de São Paulo, como o Parque Ibirapuera, Avenida Paulista, Marginal Pinheiros e outros',
        'OBS: As data podem ter variação ou estar incorretas, porfavor verificar no site oficial datas e locais disponiveis '),

    //Festival de Cultura Japonesa
    EventoSocial(
        'imagens/jpn.png',
        'Festival da Cultura Japonesa',
        '12/07 a 14/07/2024',
        'geralmente em Julho',
        'O evento celebra a rica herança cultural do Japão através de uma variedade de atividades, incluindo danças folclóricas e apresentações de taiko, Tradicionalmente realizado no São Paulo Expo, próximo ao Aeroporto de Congonhas',
        'OBS: As data podem ter variação ou estar incorretas, porfavor verificar no site oficial datas e locais disponiveis '),
  ];

  EventoSociais({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
      ),
      body: ListView.builder(
        itemCount: detalhesEvento.length,
        itemBuilder: (context, index) {
          final eventos = detalhesEvento[index];
          return ListTile(
            leading: Image.asset(eventos.icone, width: 50, height: 50),
            title: Text(eventos.nome),
            subtitle: Text(eventos.data),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detalhes(social: eventos),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
