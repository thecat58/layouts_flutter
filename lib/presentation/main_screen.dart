import 'package:flutter/material.dart';
import 'package:layaut/presentation/LoginScreen.dart';
import 'package:layaut/presentation/RejisterScreen.dart';

// class MainScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => MyApp();
// }
class MyApp extends StatelessWidget {
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

  int selectedItem = 0;
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
          Icon(
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
              Icon(Icons.back_hand, color: Color.fromARGB(255, 255, 255, 255)), // Icono de bruja
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedItem,
          onTap: (value) {
            if (value == 0) {}
            if (value == 1) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            }
            if (value == 2) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const RejisterScreen()));
            }
          },
          elevation: 0,
          items: const [
            //Item 1
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home_filled),
              label: 'Inicio',
              backgroundColor: Color.fromARGB(255, 0, 149, 255),
            ),
            //Item 2
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined),
              activeIcon: Icon(Icons.person_3),
              label: 'Perfíl',
              backgroundColor: Color.fromARGB(255, 0, 255, 229),
            ),
            //Item 3
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Configutacion',
              backgroundColor: Color.fromARGB(255, 0, 255, 229),
            ),
          ],
        ),
      ),
    );
  }

  void startHammering() {
    print('bang bang bang');
  }

//   Column _buildButtonColumn(Color color, IconData icon, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color: color),
//         Container(
//           margin: const EdgeInsets.only(top: 8),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.w400,
//               color: color,
//             ),
//             //OnPressed: startHammering(),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FavoriteWidget extends StatefulWidget {
//   const FavoriteWidget({super.key});

//   @override
//   State<FavoriteWidget> createState() => _FavoriteWidgetState();
// }

// class _FavoriteWidgetState extends State<FavoriteWidget> {
//   bool _isFavorited = true;
//   int _favoriteCount = 41;

//   void _toggleFavorite() {
//     setState(() {
//       if (_isFavorited) {
//         _favoriteCount -= 1;
//         _isFavorited = false;
//       } else {
//         _favoriteCount += 1;
//         _isFavorited = true;
//       }
//     });
//   }

  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     children: [
  //       Container(
  //         padding: const EdgeInsets.all(0),
  //         child: IconButton(
  //           padding: const EdgeInsets.all(0),
  //           alignment: Alignment.centerRight,
  //           icon: (_isFavorited
  //               ? const Icon(Icons.star)
  //               : const Icon(Icons.star_border)),
  //           color: Colors.red[500],
  //           onPressed: _toggleFavorite,
  //         ),
  //       ),
  //       SizedBox(
  //         width: 18,
  //         child: SizedBox(
  //           child: Text('$_favoriteCount'),
  //         ),
  //       ),
  //     ],
  //   );
  // }

// }
}
