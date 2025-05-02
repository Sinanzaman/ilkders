import 'package:flutter/material.dart';

class HomeScreenDers17 extends StatefulWidget {
  // StatelessWidget yerine StatefulWidget kullanıyoruz
  // çünkü stateful widget'lar, durumu (state) tutabilirler
  // yani değişkenler olacak sayfamızda
  const HomeScreenDers17({super.key});

  @override
  State<HomeScreenDers17> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenDers17> {
  // bu alanda fonksiyonlar ve değişkenler tanımlanır
  // react native'deki gibi düşünün
  int _counter = 0;

  void _incrementCounter() {
    // fonksiyonlar bu şekilde tanımlanır
    _counter++;
    setState(() {});
    // bu komut ekranımızı yeniler
    // kullanmasaydık sayı artardı ama ekranda sabit gözükürdü
    // sayfayı yenilediğimizde ancak gözükürdü
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/zikirmatik.png', width: 300),
                Positioned(top: 46, right: 80, child: _counterText()),
                Positioned(bottom: 30, child: _incrementButton()),
                Positioned(right: 76, bottom: 114, child: _resetButton()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: _resetCounter,
      // tıklanıldığında bu fonksiyon çalışır
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  GestureDetector _incrementButton() {
    return GestureDetector(
      onTap: _incrementCounter,
      // tıklanıldığında bu fonksiyon çalışır
      // _incrementCounter() yerine _incrementCounter yazdık
      // çünkü değişken zaten fonksiyonun içinde tanımlı
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      ),
    );
  }

  Text _counterText() {
    return Text(
      '$_counter',
      // text widget'ı string istediği için
      // int olan _counter'ı string'e çevirdik
      // değişken kullanmak için $ işaretini kullanıyoruz
      style: const TextStyle(
        fontFamily: 'Digital7',
        fontSize: 50,
        color: Colors.white,
      ),
    );
  }
}
