import 'package:flutter/material.dart';

class HomeScreenDers18 extends StatefulWidget {
  const HomeScreenDers18({super.key});

  @override
  State<HomeScreenDers18> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenDers18> {
  List elemanlar = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        // ListView.builder ile aynı işlevi görür
        // ama aralarına boşluk koymak için alttaki separatorBuilder'ı da eklemek gerekir
        itemCount: elemanlar.length,
        // kaç tane eleman olduğunu belirtir
        itemBuilder:
            // her elemanı oluşturur
            (context, index) => ListTile(
              // ListTile, her bir elemanın görünümünü oluşturur
              // ListTile ile ikon, metin, resim gibi şeyleri bir arada kullanabiliriz
              // buton özelliği bile eklenebilir
              title: Text(elemanlar[index]),
              subtitle: Text('Eleman: $index'),
              trailing: const Icon(Icons.chevron_right),
              // sağ tarafta bir ikon gösterir
              // giriş yap butonunun sağındaki gibi bir ikon mesela
              // solda göstermek için leading: kullanılır
              tileColor: Colors.grey.shade50,
              // her elemanın arka plan rengini ayarlar
              onTap: () => print('Eleman: $index'),
            ),
        separatorBuilder: (context, index) => const Divider(height: 0),
        // her elemanın arasına bir divider koyar
        // yani boşluk bırakır
      ),
    );
  }
}
