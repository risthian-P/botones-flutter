import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // URLs de las aplicaciones
  static const String material_3 = 'https://flutter.github.io/samples/web/material_3_demo/';
  static const String simplistic_editor_url = 'https://flutter.github.io/samples/web/simplistic_editor/';
  static const String Game_template_url = 'https://flutter.github.io/samples/web/game_template/';

  // Función para abrir URLs usando url_launcher
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo lanzar $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion finañ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Redireccion de aplicaciones'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _launchURL(material_3);
                },
                child: Text('Editor de material'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _launchURL(simplistic_editor_url);
                },
                child: Text('Editor simple'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _launchURL(Game_template_url);
                },
                child: Text('Game template'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
