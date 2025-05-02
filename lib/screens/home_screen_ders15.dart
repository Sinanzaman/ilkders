import 'package:flutter/material.dart';

class HomeScreenDers15 extends StatelessWidget {
  const HomeScreenDers15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              // üst üste bindirilmiş widget'lar için Stack widget'ı kullanılır
              children: [
                Image.asset('assets/images/zikirmatik.png', width: 300),
                const Positioned(
                  // özet konumlandırma için Positioned widget'ı kullanılır
                  // absolute position gibi düşünebilirsiniz
                  top: 46,
                  right: 80,
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontFamily: 'Digital7',
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
