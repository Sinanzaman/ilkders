import 'package:flutter/material.dart';

class HomeScreenDers20 extends StatefulWidget {
  const HomeScreenDers20({super.key});

  @override
  State<HomeScreenDers20> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenDers20> {
  List? veriler = ['veri 1'];
  // normalde boş veri tanımlayamıyoruz
  // ? koyarak veri gelmeyebilir durumunu da ele alıyoruz
  // List? veriler; şeklinde bile tanımlayabiliriz
  // ? olmasaydı hata verirdi

  // mesela List? veriler; yazdırılmak istediğinde null yazar

  @override
  Widget build(BuildContext context) {
    // veriler ??= ['veri 1']; // bu şekilde eleman yoksa veri atayabiliriz

    /*  bu şekilde de yapabiliriz
    if(veriler == null) {
      veriler = ['veri 1'];
    }
    */
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            if (veriler == null) const Text('veri yok'),
            if (veriler != null) Text(veriler![0]),
            // veriler![] kesinlikle eleman var demektir
            // veriler?[] eleman var mı yok mu bilmiyoruz
            // veriler?[0] eleman yoksa yine hata alır
            // veriler?[0] ?? 'veri yok' şeklinde yazarsak hata almayız
            veriler == null ? const Text('Veri Yok') : Text(veriler![0]),
            // bu şekilde de yapabiliriz
            // if else yazdırabilirdik de
            // böyle daha kısa ve okunabilir oldu
          ],
        ),
      ),
    );
  }
}
