import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app_ui/page/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          home: child,
          debugShowCheckedModeBanner: false,
        );
      },
      child: SplashScreen(),
    );
  }
}
