import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"), // assets/fonts/Nunito.ttf
      // pubspec.yaml dosyasına eklenmeli
      // ilk başta yorum satırı içinde olur, yorumdan çıkarılmalı ve ismi yazılmalı
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Uygulamam',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ), // fontumuzu kullandık
          ),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Text('merhaba'),
      ),
    );
  }
}
