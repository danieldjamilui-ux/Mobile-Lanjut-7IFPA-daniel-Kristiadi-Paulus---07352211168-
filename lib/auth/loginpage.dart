import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page', style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hint: Text("Masukkan Email"),
                  border: OutlineInputBorder(),
                ),),
                TextField(),
                TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hint: Text("Password"),
                  border: OutlineInputBorder()
                ),),
                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }, child: Text("login"),style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity,50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16)
                  )
                ),)
                
              ],
            ),
          ),
        ],
      )),
    );
  }
}