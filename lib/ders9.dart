import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text(
            'Uygulamam',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Image.asset(
          'assets/images/sample.jpg',
        ), // yerel bir resim için pubspec.yaml dan eklenmeli
        // assets:
        //   - assets/images/
        /* body: Image.network(
          "https://t4.ftcdn.net/jpg/01/66/54/11/240_F_166541103_eTbwYTC2b4Wn21vWBtzSDEIFp3NjB5Dg.jpg",
          width: 500,
          height:
              200, // width ve height verildiğinde resmi bozmamak için birisini geçersiz kılar
          // bu yüzden fit ile boxfit kullanılır
          fit:
              BoxFit
                  .fill, // BoxFit.fill, BoxFit.cover, BoxFit.contain, BoxFit.fitWidth, BoxFit.fitHeight
        ), */
        // network ile internetten resim alırız
      ),
    );
  }
}
