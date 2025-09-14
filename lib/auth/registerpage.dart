import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView( // biar bisa scroll kalau keyboard muncul
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Nama Lengkap",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // nanti bisa diarahkan ke login atau halaman utama
                    Navigator.pop(context); 
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text("Register"),
                ),
                const SizedBox(height: 16),
                TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
              }, 
              child: const Text("Belum punya akun? Daftar"),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
