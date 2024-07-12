import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // URLs de las aplicaciones
  static const String facebookUrl = 'https://flutter.github.io/samples/web/material_3_demo/';
  static const String twitterUrl = 'https://flutter.github.io/samples/web/simplistic_editor/';
  static const String instagramUrl = 'https://flutter.github.io/samples/web/game_template/#/play';

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
      title: 'Abrir Aplicaciones',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Abrir Aplicaciones'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _launchURL(facebookUrl);
                },
                child: Text('Facebook'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _launchURL(twitterUrl);
                },
                child: Text('Twitter'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _launchURL(instagramUrl);
                },
                child: Text('Instagram'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
