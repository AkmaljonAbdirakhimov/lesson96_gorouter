import 'package:go_router/go_router.dart';
import 'package:lesson96_gorouter/screens/first_screen.dart';
import 'package:lesson96_gorouter/screens/main_screen.dart';
import 'package:lesson96_gorouter/screens/second_screen.dart';
import 'package:lesson96_gorouter/screens/third_screen.dart';

class AppRoutes {
  static const firstScreen = 'first-screen';
  static const secondScreen = 'second-screen';
  static const thirdScreen = 'third-screen';

  static final config = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const MainScreen(),
        routes: [
          GoRoute(
            path: firstScreen,
            name: firstScreen,
            builder: (context, state) => const FirstScreen(),
          ),
          GoRoute(
            path: secondScreen,
            name: secondScreen,
            builder: (context, state) => const SecondScreen(),
          ),
          GoRoute(
            path: thirdScreen,
            name: thirdScreen,
            builder: (context, state) => const ThirdScreen(),
          ),
        ],
      ),
    ],
  );
}
