import 'dart:developer';

import 'package:flowers/custom_button.dart';
import 'package:flutter/material.dart';

class MyTabletBody extends StatefulWidget {
  const MyTabletBody({super.key});

  @override
  State<MyTabletBody> createState() => _MyTabletBodyState();
}

class _MyTabletBodyState extends State<MyTabletBody> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/logo_transparent.png"),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'LUX Flowers',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomButton(
                      onTap: () => log('Ana Sayfa'),
                      title: 'Ana Sayfa',
                    ),
                    CustomButton(
                      onTap: () => log('Hakkımızda'),
                      title: 'Hakkımızda',
                    ),
                    CustomButton(
                      onTap: () => log('Hizletlerimiz'),
                      title: 'Hizletlerimiz',
                    ),
                    CustomButton(
                      onTap: () => log('iletisim'),
                      title: 'iletisim',
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused)) {
                              return Colors.orange;
                            }
                            if (states.contains(MaterialState.hovered)) {
                              return const Color.fromARGB(255, 48, 126, 50);
                            }
                            if (states.contains(MaterialState.pressed)) {
                              return const Color.fromARGB(255, 102, 101, 98);
                            }
                            return Colors.cyan; // null throus er
                          }),
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused)) {
                              return Colors.red;
                            }
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.red;
                            }
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue;
                            }
                            return Colors
                                .black; // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {
                          log("GIRIS");
                        },
                        child: const Text('GIRIS'),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[500],
            ),
            const MainImage(),
            //subtitle
            const Text(
              'LUX FLOWERS HİZMETLERİ',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const MainContent(),
            const MainListImages(),
            const MainInfo(),
          ],
        ),
      ),
    );
  }
}

class MainInfo extends StatefulWidget {
  const MainInfo({super.key});

  @override
  State<MainInfo> createState() => _MainInfoState();
}

class _MainInfoState extends State<MainInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.black,
          height: 100,
          width: double.infinity,
          child: const Text(
            "Hızlı, Güvenli ve Zamanında ! En Uygun Fiyat Garantisi ile Teslimat.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/maininfo.jpg",
                ),
                fit: BoxFit.cover),
          ),
          height: 500,
          width: double.infinity,
        ),
        Container(
          color: const Color.fromARGB(255, 22, 22, 22),
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(fit: BoxFit.cover, "assets/images/qvality1.png"),
                Image.asset(fit: BoxFit.cover, "assets/images/qvality2.png"),
                Image.asset(fit: BoxFit.cover, "assets/images/qvality3.png"),
                Image.asset(fit: BoxFit.cover, "assets/images/qvality4.png"),
                Image.asset(fit: BoxFit.cover, "assets/images/qvality5.png"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/main_background.jpg",
            ),
            fit: BoxFit.cover),
      ),
      height: 500,
      width: double.infinity,
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Content(
            title1: "İÇ MEKAN BİTKİLER",
            title2: "LUX Flowers",
            title3:
                "her zaman iç mekan bitkilerini müşterilerine sorunsuz, en uygun fiyata, zamanında hizmet vermektedir.",
            contentImage: Container(
              height: 50,
              color: Colors.transparent,
              child: Image.asset("assets/images/flower.png"),
            ),
          ),
          Content(
            title1: "KESME ÇİÇEK",
            title2: "Müşterilerimize KESME ÇİÇEK",
            title3:
                "kategorisinde her zaman en canlı, bakımlı çiçekleri sorunsuz olarak ulaştırıyoruz.",
            contentImage: Container(
              height: 50,
              color: Colors.transparent,
              child: Image.asset("assets/images/rose.png"),
            ),
          ),
          Content(
            title1: "KAKTÜS ÇEŞİTLERİ",
            title2: "Müşterilerimize her",
            title3:
                "daim en uygun fiyat garantisi ile KAKTÜS satışını yapmaktayız. Her zaman en taze ve hızlı hizmet.",
            contentImage: Container(
              height: 50,
              color: Colors.transparent,
              child: Image.asset("assets/images/kaktus.png"),
            ),
          ),
          Content(
            title1: "ORKİDE ÇEŞİTLERİ",
            title2: "LUX Flowers",
            title3:
                "her zaman iç mekan bitkilerini müşterilerine sorunsuz, en uygun fiyata, zamanında hizmet vermektedir.",
            contentImage: Container(
              height: 50,
              color: Colors.transparent,
              child: Image.asset("assets/images/orkide.png"),
            ),
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;

  final Widget contentImage;
  const Content({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.contentImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4.1,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      child: Column(
        children: [
          Text(
            title1,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
              height: 200,
              padding: const EdgeInsets.all(30),
              child: contentImage),
          Text(
            title2,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            title3,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

List<Widget> images = [
  Image.asset(
    "assets/images/info1.jpg",
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/info2.jpg",
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/info3.jpg",
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/info4.jpg",
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/info5.jpg",
    fit: BoxFit.cover,
  ),
  Image.asset(
    "assets/images/info6.jpeg",
    fit: BoxFit.cover,
  ),
];

class MainListImages extends StatelessWidget {
  const MainListImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (Widget image in images)
              SizedBox(
                width: 180,
                height: 250,
                child: image,
              ),
          ],
        ),
      ),
    );
  }
}
