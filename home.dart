import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: logout,
          ),
        ],
      ),
      body: Center(
        child: Text(
          'HI! WELCOME',
          style: TextStyle(fontSize: 42),
        ),
      ),
    );
  }
}