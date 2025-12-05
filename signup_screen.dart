import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameCtrl = TextEditingController();
    final loginCtrl = TextEditingController();
    final passwordCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/signup.png", height: 120),

            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: "Username"),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: loginCtrl,
              decoration: const InputDecoration(labelText: "Login"),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: passwordCtrl,
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
                      content: Text("Need to implement Registration"),
                    );
                  },
                );
              },
              child: const Text("Create Account"),
            ),

            const SizedBox(height: 10),

            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
