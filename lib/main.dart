import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'DIA DE HELLOWEEN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'CALBAZA CALABAZIN',
                  style: TextStyle(
                    color: Colors.orange[300],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon (
            Icons.star,
            color: Colors.indigo[500],
          ),
          const Text('410'),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LLAMAR'),
        _buildButtonColumn(color, Icons.near_me, 'COMPARTIR'),
        _buildButtonColumn(color, Icons.share, 'ENVIAR'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        ' ¿Cuándo es el verdadero día de Halloween?La víspera es conocida como All Hallows Eve, o Halloween, es por esto que se celebra todos los 31 de octubre. El día después del Día de Todos los Santos es el Día de las Almas el 2 de noviembre',
        softWrap: true,
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: <Widget>[
              Icon(Icons.back_hand, color: Colors.white), // Icono de bruja
              SizedBox(width: 8.0), // Espacio entre el ícono y el texto
              Text('Día de Brujas'),
            ],
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/imgane.jpg',
              width: 600,
              height: 520,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
