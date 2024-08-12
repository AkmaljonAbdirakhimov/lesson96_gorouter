import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (ctx) {
              //       return const SecondScreen();
              //     },
              //   ),
              // );
              Navigator.pushNamed(context, '/home/third-screen');
            },
            child: const Text(
              "Go to 2nd Screen",
            ),
          )
        ],
      ),
    );
  }
}
