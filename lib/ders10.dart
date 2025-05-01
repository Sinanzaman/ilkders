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
          // öğeler ortalandı
          child: Column(
            // öğeler dikey olarak sıralandı
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween, // justifycontent ve alignitems ile aynı işlevi görür
            // dikey olduğu için mainaxis dikey boşluğu ayarlar
            // crossAxisAlignment ise column için yatay boşluğu ayarlar
            // eğer column yerine row kullanırsak mainAxisAlignment yatay boşluğu ayarlar
            // crossAxisAlignment ise dikey boşluğu ayarlar
            // yani cross olan tersini ayarlar
            children: [
              Text('Merhaba'),
              SizedBox(
                height: 50,
              ), // boş view ile verilen boşluk ile aynı işlevi görür
              Text('Deneme'),
              Image.asset('assets/images/sample.jpg', width: 500),
            ],
          ),
        ),
      ),
    );
  }
}
