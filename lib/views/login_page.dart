import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage(serverController, BuildContext context, {Key? key})
      : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green.shade300,
                  Colors.green.shade800,
                ],
              ),
            ),
            child: Image.network(
              "https://www.pinclipart.com/picdir/big/573-5736105_sprinkler-repair-company-logo-tatuaje-gota-de-agua.png",
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 10),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 40,
                  color: Colors.blue[100],
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 260, bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(labelText: "Usuario:"),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 40),
                        TextFormField(
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(labelText: "Contraseña:"),
                          obscureText: true,
                        ),
                        const SizedBox(height: 40),
                        // ignore: deprecated_member_use
                        RaisedButton(
                          textColor: Colors.white,
                          color: Theme.of(context).primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          onPressed: () => _login(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text("Iniciar sesion"),
                              if (_loading)
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: const EdgeInsets.only(left: 20),
                                  child: const CircularProgressIndicator(),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // ignore: prefer_const_constructors
                            Text('¿No estas registrado?'),
                            TextButton(
                              // ignore: prefer_const_constructors
                              child: Text("Registrarse"),
                              onPressed: () {
                                _showRegister(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _login(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }
  }

  void _showRegister(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/register',
    );
  }
}
