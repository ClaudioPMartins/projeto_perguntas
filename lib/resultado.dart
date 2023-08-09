import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  //final String texto = 'Fim ';
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return ' Parábens';
    } else if (pontuacao < 12) {
      return ' Você é bom';
    } else if (pontuacao < 16) {
      return ' Impressionante';
    } else {
      return ' Profissional';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            '$pontuacao Pontos!!! $fraseResultado',
            style: const TextStyle(fontSize: 28),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: FloatingActionButton(
            onPressed: quandoReiniciarQuestionario,
            child: const Text('Restart'),
          ),
        )
      ],
    );
  }
}
