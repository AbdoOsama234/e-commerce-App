import 'package:flutter/material.dart';

import '../../constanse.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0, backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text("Welcome",style: TextStyle(color: primaryColor,fontSize: 18),),
              Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 30))
            ]
              ),
          ],
        ),
      ),
    );
  }
}
