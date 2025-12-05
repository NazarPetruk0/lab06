import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCtrl = TextEditingController();
    final passCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/login.png", height: 120),

            TextField(
              controller: loginCtrl,
              decoration: const InputDecoration(labelText: "Login"),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return const AlertDialog(
                      title: Text("Message"),
                      content: Text("Need to implement Login"),
                    );
                  },
                );
              },
              child: const Text("Login"),
            ),

            const SizedBox(height: 10),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              },
              child: const Text("Sign up"),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResetPasswordScreen(),
                  ),
                );
              },
              child: const Text("Forgot Password?"),
            ),
          ],
        ),
      ),
    );
  }
}
