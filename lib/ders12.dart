import 'package:flutter/material.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            // sabit değerler için const kullanılır, performansı artırır
            // mesela burada color white hep öyle kalacak, değişmeyecek
            // const kullanmazsak her seferinde yeniden oluşturulur
            // hem artık altı çizili değil
            'Uygulamam',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20), // padding görevi görür
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  //container özelleştirmeleri yapılabilir
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  // boxdecoration kullanıyorsak color burada olmalı
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                alignment:
                    Alignment
                        .center, // alignitems ve justifyitems ikisini bir kullanır
                child: const Text('Sinan', style: TextStyle(fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image.asset('assets/images/sample.jpg', height: 200),
              ),
              const SizedBox(
                width: 200,
                height: 80,
                child: Card(elevation: 3, child: Align(child: Text('Merhaba'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
