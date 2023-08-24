import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CircularView extends StatelessWidget {
  const CircularView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator.adaptive(),
            ElevatedButton(
                onPressed: () {
                  context.go('/home');
                },
                child: const Text("Go to home page"))
          ],
        ),
      ),
    );
  }
}
