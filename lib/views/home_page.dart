import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cosecha de Agua"),
        backgroundColor: Colors.green[900],
      ),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              color: Colors.green[900],
              child: Container(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  "https://i0.wp.com/velero.cr/ws/wp-content/uploads/2019/07/Captura-de-pantalla-2019-07-23-a-las-9.22.18.png?fit=642%2C424&ssl=1",
                  height: 250,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              color: Colors.green[900],
              child: Container(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  "https://i0.wp.com/velero.cr/ws/wp-content/uploads/2019/07/Captura-de-pantalla-2019-07-23-a-las-9.22.18.png?fit=642%2C424&ssl=1",
                  height: 250,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              color: Colors.green[900],
              child: Container(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  "https://i0.wp.com/velero.cr/ws/wp-content/uploads/2019/07/Captura-de-pantalla-2019-07-23-a-las-9.22.18.png?fit=642%2C424&ssl=1",
                  height: 250,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              color: Colors.green[900],
              child: Container(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  "https://i0.wp.com/velero.cr/ws/wp-content/uploads/2019/07/Captura-de-pantalla-2019-07-23-a-las-9.22.18.png?fit=642%2C424&ssl=1",
                  height: 250,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
