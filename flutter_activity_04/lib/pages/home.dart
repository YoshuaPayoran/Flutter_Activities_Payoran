import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Activity 4',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/white_hat.png', 
              width: 250,
            ),
            const SizedBox(height: 20),

            Image.network(
              'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=2048x2048&w=is&k=20&c=KTpY1O4d7-EuX-R_GR_44Upc-n9esJOZFpcqvA4CM0E=',
              width: 250,
            ),
            const SizedBox(height: 30),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.warning, color: Colors.red, size: 50),
                SizedBox(width: 20),
                Icon(Icons. rocket, color: Colors.yellow, size: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
