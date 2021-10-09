import 'package:flutter/material.dart';

class listaForo extends StatefulWidget {
  listaForo({Key? key}) : super(key: key);

  @override
  _listaForoState createState() => _listaForoState();
}

class _listaForoState extends State<listaForo> {
  List<String> names = [
    '¿Cuales son las consecuencias del déficit hídrico en las plantas?',
    '¿Que plantas se adaptan mas a los periodos secos?',
    '¿Como colaborar a la prevención del déficit hídrico en las zonas urbanas',
    '¿Como puedo contrarrestar el déficit hídrico?',
    '¿DE QUE ME SIRVE LA COSECHA DE AGUA PARA EL DÉFICIT HIDRICO?',
    '¿CUALES SON LOS PERIODOS DONDE SE DA MAS DÉFICIT HÍDRICO?',
    '¿QUE SUCEDE A NIVEL FISIOLOGÍCO DE LA PLANTA, CUANDO HAY DÉFICIT HÍDRICO?'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Déficit Hídrico"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.5),
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              final name = names[index];
              return ListTile(
                contentPadding: EdgeInsets.all(15.0),
                title: Text(name),
                leading: Icon(
                  Icons.check_circle,
                  color: Colors.greenAccent,
                ),
                onTap: () {
                  print(name);
                },
              );
            },
          ),
        ));
  }
}
