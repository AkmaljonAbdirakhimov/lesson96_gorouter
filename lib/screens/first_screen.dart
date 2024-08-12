import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson96_gorouter/router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final urlQuery = GoRouterState.of(context).uri.query.toString();
    // final arguments = GoRouterState.of(context).extra;
    // print(urlQuery);
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
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
              // Navigator.pushNamed(context, '/second-screen', arguments: {
              //   "page": 1,
              // });
              // context.goNamed(AppRoutes.secondScreen);
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
