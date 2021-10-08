import 'package:atl_harvest_movil/views/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get serverController => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATL HARVEST',
      home: LoginPage(serverController, context),
    );
  }
}
