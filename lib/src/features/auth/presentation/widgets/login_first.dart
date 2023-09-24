import 'package:flutter/material.dart';

class LoginFirstPage extends StatelessWidget {
  const LoginFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset('assets/images/login_bg_1.jpg',
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 60),
            const Text(
              "Create a new account",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Text(
              "Notify is a platform to share your articles, events, daily texts etc. Grow your connection",
              style: TextStyle(
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
