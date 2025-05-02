import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilkders/models/urunler_model.dart';

class HomeScreenDers21 extends StatefulWidget {
  const HomeScreenDers21({super.key});

  @override
  State<HomeScreenDers21> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenDers21> {
  UrunlerModel? _veriler;
  List<Urun> _urunler = [];

  void _loadData() async {
    final dataString = await rootBundle.loadString('assets/files/data.json');
    // rootBundle ile dosya okuyabiliriz.
    // gelen veriler asenkron bir şekilde geldiği için await ile bekliyoruz.
    // await kullanıldığı için fonksiyonun başına async ekliyoruz.
    final dataJson = jsonDecode(dataString);
    // jsonDecode ile string olarak gelen verileri json'a çeviriyoruz.
    // jsonEncode ise json'dan string'e çevirir.

    _veriler = UrunlerModel.fromJson(dataJson);
    _urunler = _veriler!.urunler;
    setState(() {});
    // ürünler hazır olunca ekranımızı yeniledik
  }

  void _filterData(int id) {
    _urunler =
        _veriler!.urunler
            .where((verilerEleman) => verilerEleman.kategori == id)
            .toList();
    // where ile filtreleme yapıyoruz.
    // filtreleme işlemi sonucunda bir liste döndürüyor.

    setState(() {});
  }

  void _resetFilter() {
    _urunler = _veriler!.urunler;
    setState(() {});
  }

  @override
  void initState() {
    // initState, widget ilk oluşturulduğunda çalışır.
    // react native deki useState gibi
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            _veriler == null
                ? const Text('Yükleniyor')
                : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: _resetFilter,
                      child: const Text('Tüm Ürünler'),
                    ),
                    _kategorilerView(),
                    _urunlerView(),
                  ],
                ),
      ),
    );
  }

  ListView _urunlerView() {
    return ListView.separated(
      shrinkWrap: true,
      // shrinkWrap: true ile listeyi ekran boyutuna göre ayarlıyoruz.
      // eğer shrinkWrap: false olursa liste sonsuz boyutta olur.
      // yani ekran boyutunu aşar ve hata verir.
      itemCount: _urunler.length,
      itemBuilder: (context, index) {
        final Urun urun = _urunler[index];
        return ListTile(
          leading: Image.network(
            urun.resim,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(urun.isim),
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 10),
    );
  }

  Row _kategorilerView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_veriler!.kategoriler.length, (index) {
        final kategori = _veriler!.kategoriler[index];
        return GestureDetector(
          onTap: () => _filterData(kategori.id),
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(kategori.isim),
          ),
        );
      }),
    );
  }
}
