import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_app/controller/data_controller.dart';
import 'package:trip_app/view/dash_board.dart';
import 'package:trip_app/view/details_screen.dart';
import 'package:trip_app/view/login_screen.dart';
import 'package:trip_app/view/splash_scree.dart';
import 'package:trip_app/view/success_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: const Color(0xFFFAFAFA),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => const LoginScreen(),
          SplashScreen.id: (context) => const SplashScreen(),
          DashBoardScreen.id: (context) => const DashBoardScreen(),
          //DetailScreen.id: (context) => const DetailScreen(),
          // SuccessScreen.id: (context) => const SuccessScreen(),
        },
      ),
    );
  }
}
