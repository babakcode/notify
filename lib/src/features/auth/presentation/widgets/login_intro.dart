import 'package:flutter/material.dart';

class LoginIntro extends StatelessWidget {
  const LoginIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: "Welcome back to ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 24,
                      )
                  ),
                  TextSpan(
                      text: "Notify",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )
                  )
                ]
            )),
            Text('Let\'s connect with each other')
          ],
        ),
      ),
    );
  }
}
