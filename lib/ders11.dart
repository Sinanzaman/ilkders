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
        appBar: AppBar(
          title: Text(
            'Uygulamam',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                // normal buton ekledik
                onPressed: () => print('Bana tıkladın'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                // kendisine özgü style'ı vardı onu ekledik
                child: Text(
                  'Bana Tıkla',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => {print('yes')},
                style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                child: Text(
                  'Tıkla Bana',
                  style: TextStyle(color: Colors.white),
                ),
              ), // yazı şeklinde buton ekledik
              Icon(
                // hazır ikonlarımızı böyle ekleriz
                Icons.home,
                color: Colors.red,
                size: 100,
              ),
              IconButton(
                // ikonlu buton ekledik
                onPressed:
                    () {}, // süslü parantez içinde birden fazla işlem yapabiliriz
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
