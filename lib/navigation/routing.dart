import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:csen268_implicit_animations/pages/animation_1.dart';
import 'package:csen268_implicit_animations/pages/animation_2.dart';
import 'package:csen268_implicit_animations/pages/animation_3.dart';
import 'package:csen268_implicit_animations/pages/animation_4.dart';
import 'package:csen268_implicit_animations/pages/animation_5.dart';
import 'package:csen268_implicit_animations/pages/home.dart';

class RouteName {
  static const home = "home";
  static const animation1 = "animation1";
  static const animation2 = "animation2";
  static const animation3 = "animation3";
  static const animation4 = "animation4";
  static const animation5 = "animation5";
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: "Root",
);
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: "Shell",
);

/*

Created GoRouter with the following paths:
  / (name: home)
  /byAuthor (name: byAuthor)
  /byAuthor/detail (name: byAuthorDetail)
  /byTitle (name: byTitle)
  /byTitleDetail (name: byTitleDetail)
  /profile (name: profile)
  /login (name: login)

*/

GoRouter routing() {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: "/home",

    /*
    
    Created a Listenable from the stream of the AuthenticationBloc
    Added listenable to the refreshListentable of the GoRouter

    */

    /* 

    If logged in and current path == /login, go to /byAuthor
    If logged out and current path != /login, go to /login

    */
    routes: [
      GoRoute(
        path: '/home',
        name: RouteName.home,
        builder: (context, state) {
          return const Home();
        },
        routes: [
          GoRoute(
            path: 'animation1',
            name: RouteName.animation1,
            builder: (BuildContext context, GoRouterState state) {
              return const FirstAnimation();
            },
          ),
          GoRoute(
            path: 'animation2',
            name: RouteName.animation2,
            builder: (BuildContext context, GoRouterState state) {
              return const SecondAnimation();
            },
          ),
          GoRoute(
            path: 'animation3',
            name: RouteName.animation3,
            builder: (BuildContext context, GoRouterState state) {
              return const ThirdAnimation();
            },
          ),
          GoRoute(
            path: 'animation4',
            name: RouteName.animation4,
            builder: (BuildContext context, GoRouterState state) {
              return const ForthAnimation();
            },
          ),
          GoRoute(
            path: 'animation5',
            name: RouteName.animation5,
            builder: (BuildContext context, GoRouterState state) {
              return const FifthAnimation();
            },
          ),
        ],
      ),
    ],
  );
}
