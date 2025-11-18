import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/app_routes.dart';
import 'core/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(439, 956),
      minTextAdapt: false,
      builder: (_, __) {
        return MaterialApp.router(
          routerConfig: AppRoutes.router,
          debugShowCheckedModeBanner: false,
          title: 'Task App',
          theme: AppTheme.darkTheme,
        );
      },
    );
  }
}
