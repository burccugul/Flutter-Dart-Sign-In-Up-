import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Giriş Ekranı')),
      body: Container(
        child: Column(
          children: [

            TextFormField(
              controller: t1,
            ),
            TextFormField(
              controller: t2,
            ),
            RaisedButton(
                child: Text("Sign In"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profil(
                                username: t1.text,
                                password: t2.text,
                              )));
                }),
          ],
        ),
      ),
    );
  }
}

class Profil extends StatefulWidget {
  late String username, password;
  Profil({required this.username, required this.password});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Çıkış Ekranı")),
      body: Container(
        child: Column(
          children: [

            Text(widget.username),
            Text(widget.password),
            RaisedButton(
                child: Text("Sign Out"),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
