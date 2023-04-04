import 'dart:math';

import 'package:flutter/material.dart';

class AppFrasesDoDia extends StatefulWidget {
  const AppFrasesDoDia({super.key});

  @override
  State<AppFrasesDoDia> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AppFrasesDoDia> {
  var _frasesUniverso = [
    "O universo surgiu há cerca de 13,8 bilhões de anos, após uma grande explosão chamada Big Bang.",
    "O Big Bang não foi uma explosão no sentido comum da palavra, mas sim uma expansão repentina e violenta do espaço-tempo.",
    "A primeira luz do universo, conhecida como radiação cósmica de fundo em micro-ondas, é uma prova importante da teoria do Big Bang.",
    "O universo é composto principalmente de matéria escura e energia escura, que não podemos ver nem detectar diretamente.",
    "A expansão do universo está acelerando, o que significa que as galáxias estão se afastando umas das outras a uma taxa cada vez maior.",
    "Existem vários modelos teóricos sobre a origem do universo, como a teoria das cordas e a teoria das branas.",
    "O universo é vasto e contém bilhões de galáxias, cada uma delas contendo bilhões de estrelas e planetas.",
    "O Sol, nosso astro-rei, tem cerca de 4,6 bilhões de anos e deve continuar a brilhar por mais cerca de 5 bilhões de anos.",
    "A Terra, nosso lar, tem cerca de 4,5 bilhões de anos e é o único planeta conhecido que abriga vida.",
    "A vida na Terra provavelmente surgiu há cerca de 3,5 bilhões de anos, em ambientes aquáticos primitivos.",
    "Existem vários eventos cósmicos que podem ameaçar a vida na Terra, como supernovas, asteroides e buracos negros.",
    "A busca por vida extraterrestre é um dos maiores mistérios e desafios da ciência moderna.",
    "A luz viaja a uma velocidade de 299.792.458 metros por segundo, o que a torna a coisa mais rápida conhecida pelo homem.",
    "Os buracos negros são objetos cósmicos extremamente densos que exercem uma força gravitacional tão forte que nada pode escapar de sua atração.",
    "A fusão nuclear é o processo que alimenta as estrelas e produz a energia que nos permite ver o universo.",
    "O universo é governado por leis físicas e matemáticas precisas e complexas, que regem tudo, desde o movimento das galáxias até a química dos átomos.",
    "O universo é um lugar fascinante e misterioso, cheio de maravilhas e desafios para a ciência e a imaginação humana.",
    "Embora ainda tenhamos muito a aprender sobre o universo, cada descoberta nos aproxima um pouco mais da compreensão completa de nosso lugar no cosmos.",
    "O estudo do universo nos ajuda a entender não apenas a natureza física do universo, mas também nossa própria origem e lugar nele."
  ];
  String _fraseInicial =
      "O universo surgiu há cerca de 13,8 bilhões de anos, após uma grande explosão chamada Big Bang.";

  void _gerarFrase() {
    var numeroAleatorio = Random().nextInt(_frasesUniverso.length);
    setState(() {
      _fraseInicial = _frasesUniverso[numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //     // title: Text('Frases do Dia'),
      //     // centerTitle: true,
      //     // backgroundColor: Colors.white,
      //     ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('imagens/logo.png'),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              _fraseInicial,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            ElevatedButton(
              onPressed: _gerarFrase,
              child: Text('Gerar Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
