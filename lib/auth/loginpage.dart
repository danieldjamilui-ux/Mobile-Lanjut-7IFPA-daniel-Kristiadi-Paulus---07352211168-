// loginpage.dart
import 'package:flutter/material.dart';
import 'registerpage.dart'; // <- PENTING: pastikan file ini ada

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Email
                TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Masukkan Email", // gunakan hintText, bukan hint
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),

                // Password
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), // gunakan Icons.lock
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Tombol Login (sementara belum diarahkan ke Home)
                ElevatedButton(
                  onPressed: () {
                    // TODO: arahkan ke HomePage setelah login valid
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text("Login"),
                ),

                const SizedBox(height: 12),

                // === Tombol menuju RegisterPage (PERBAIKAN) ===
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text("Belum punya akun? Daftar"),
                ),
                // =============================================
              ],
            ),
          ),
        ),
      ),
    );
  }
}
