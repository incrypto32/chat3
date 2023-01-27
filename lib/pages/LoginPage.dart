import 'package:chat3/services/webAuth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            await Web3AuthService.login();
          },
          child: const Text(
            "Login",
          ),
        ),
      ),
    );
  }
}
