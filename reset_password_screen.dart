import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Reset Password")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/reset.png", height: 120),

            TextField(
              controller: loginCtrl,
              decoration:
              const InputDecoration(labelText: "Login or Email"),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) {
                    return const AlertDialog(
                      title: Text("Message"),
                      content: Text("Need to implement reset"),
                    );
                  },
                );
              },
              child: const Text("Reset Password"),
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
