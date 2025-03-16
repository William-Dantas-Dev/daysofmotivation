import 'package:flutter/material.dart';
import 'dart:async';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 0), () {
        if (context.mounted) {
          Navigator.pushReplacementNamed(context, '/home');
        }
      });
    });

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.star, size: 100.0, color: Colors.white),
              SizedBox(height: 20),
              Text(
                "Hoje é um novo dia para conquistar seus sonhos!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
