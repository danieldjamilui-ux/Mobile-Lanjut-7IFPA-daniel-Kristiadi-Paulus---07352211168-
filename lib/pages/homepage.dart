import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "ArSal_Shoop",
          style: TextStyle(
              color: const Color.fromARGB(255, 21, 85, 23),
              fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        // pakai widget action[] untuk buat children di appBar
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons
                    .notifications), //pakai stack agar dapat mengatur posisinya
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.shopping_cart_outlined),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              //UNTUK BUAT SEARCH
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: "search"), // hint text untuk buat plecholder
            )
          ],
        ),
      ),
    );
  }
}
