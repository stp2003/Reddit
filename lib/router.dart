import 'package:flutter/material.dart';
import 'package:reddit/features/home/screen/home_screen.dart';
import 'package:routemaster/routemaster.dart';

import 'features/auth/screen/login_screen.dart';
import 'features/community/screens/create_community_screen.dart';

final loggedOutRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(
          child: LoginScreen(),
        ),
  },
);

final loggedInRoute = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(
          child: HomeScreen(),
        ),
    '/create-community': (_) => const MaterialPage(
          child: CreateCommunityScreen(),
        ),
  },
);