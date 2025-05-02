import 'package:flutter/material.dart';
import 'package:ilkders/models/elemanlar_model.dart';

class HomeScreenDers19 extends StatefulWidget {
  const HomeScreenDers19({super.key});

  @override
  State<HomeScreenDers19> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenDers19> {
  List<ElemanlarModel> elemanlar = [
    // <> içerisine class ismi yazılır
    // class ismi büyük harfle başlar
    ElemanlarModel('Başlık 1', 'Alt başlık 1'),
    ElemanlarModel('Başlık 2', 'Alt başlık 2'),
    ElemanlarModel('Başlık 3', 'Alt başlık 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: elemanlar.length,
        itemBuilder:
            (context, index) => ListTile(
              title: Text(elemanlar[index].title),
              // önceden 'title' yazıyorduk, şimdi .title yazıyoruz
              // class yapısında isimlerini belirledik çünkü
              subtitle: Text(elemanlar[index].subtitle),
              trailing: const Icon(Icons.chevron_right),
              tileColor: Colors.grey.shade50,
              onTap: () => print('Eleman: $index'),
            ),
        separatorBuilder: (context, index) => const Divider(height: 0),
      ),
    );
  }
}
