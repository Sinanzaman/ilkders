import 'package:flutter/material.dart';

void main() {
  // ilk çalışan kod burası. tüm uygulamayı başlattık run ile
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Text('hiii')),
    ); // MaterialApp uygulamanın ana yapısını oluşturur.
    //Scaffold ise sayfanın temel yapısını oluşturur.
  }
}
