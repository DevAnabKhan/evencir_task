import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task/src/features/dashboard/presentation/widgets/wrapper.dart';
import 'package:test_task/src/features/home/presentation/views/home_view.dart';
import 'package:test_task/src/features/mood/presentation/views/mood_view.dart';
import 'package:test_task/src/features/training/presentation/views/training_calendar.dart';

class AppRoutes {
  static const String homeView = '/';
  static const String planView = '/plan';
  static const String moodView = '/mood';


  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.homeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.planView,
        builder: (BuildContext context, GoRouterState state) {
          return TrainingCalendarScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.moodView,
        builder: (BuildContext context, GoRouterState state) {
          return MoodScreen();
        },
      ),
    ],
  );
}
