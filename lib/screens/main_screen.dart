import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson96_gorouter/router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
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
              Navigator.pushNamed(context, '/first-screen', arguments: {
                "page": 1,
              });
              // context.goNamed(
              //   AppRoutes.firstScreen,
              //   queryParameters: {
              //     "page": "1",
              //   },
              //   extra: "Salom",
              // );
            },
            child: const Text(
              "Go to 1st Screen",
            ),
          )
        ],
      ),
    );
  }
}
