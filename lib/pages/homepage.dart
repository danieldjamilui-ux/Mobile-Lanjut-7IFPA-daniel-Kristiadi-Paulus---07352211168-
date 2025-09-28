import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'cartpage.dart';
import 'notifpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _pageController = PageController();

  final List<Map<String, dynamic>> promoList = [
    {
      "title": "Ayo beli Sedang Promo",
      "subtitle": "Sedang diskon 50%",
      "desc": "Laptop LOQ RTX 350",
      "color": const Color.fromARGB(255, 255, 52, 37),
      "image": "images/log.png",
    },
    {
      "title": "Promo Baju Baru",
      "subtitle": "Diskon 70%",
      "desc": "Beli baju kekinian sekarang",
      "color": const Color.fromARGB(255, 160, 28, 165),
      "image": "images/log.png",
    },
    {
      "title": "Promo Tas Branded",
      "subtitle": "Diskon 30%",
      "desc": "Tas kualitas terbaik untukmu",
      "color": Color.fromARGB(255, 57, 189, 79),
      "image": "images/log.png",
    },
  ];

  final List<Map<String, dynamic>> produkHorizontal = [
    {"nama": "Sepatu", "harga": "Rp 250.000", "image": "images/log.png"},
    {"nama": "Tas", "harga": "Rp 400.000", "image": "images/log.png"},
    {"nama": "Baju", "harga": "Rp 150.000", "image": "images/log.png"},
    {"nama": "Jaket", "harga": "Rp 350.000", "image": "images/log.png"},
  ];

  final List<Map<String, dynamic>> produkVertical = [
    {"nama": "Topi", "harga": "Rp 50.000", "image": "images/log.png"},
    {"nama": "Kemeja", "harga": "Rp 180.000", "image": "images/log.png"},
    {"nama": "Sweater", "harga": "Rp 220.000", "image": "images/log.png"},
    {"nama": "Celana Jeans", "harga": "Rp 300.000", "image": "images/log.png"},
  ];

  final kategori = ["All", "Laptop", "Mous", "Keyboard", "handphone", "Acsesoris"];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DPShope",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 67, 1, 83),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                // 🛒 Tombol Cart
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CartPage()),
                    );
                  },
                ),
                const SizedBox(width: 20),

                // 🔔 Tombol Notifikasi
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationPage()),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔍 Search box
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search..",
                ),
              ),
            ),

            // 🟥 Container promo
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: promoList.length,
                      itemBuilder: (context, index) {
                        final promo = promoList[index];
                        return Container(
                          padding: const EdgeInsets.all(20),
                          color: promo["color"] as Color,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      promo["title"].toString(),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      promo["subtitle"].toString(),
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      promo["desc"].toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                height: 150,
                                child: Image.asset(
                                  promo["image"].toString(),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: promoList.length,
                          effect: const WormEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                            spacing: 8,
                            activeDotColor: Colors.white,
                            dotColor: Colors.black26,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
                width: 500,
                height: 50,
                
                child: ListView.builder( 
                  scrollDirection: Axis.horizontal,
                  itemCount: kategori.length,
                  itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.all(10),
                   
                    color: Colors.blue,
                    child: Text(kategori[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
