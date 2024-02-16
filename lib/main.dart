import 'package:flutter/material.dart';

import 'pages/welcome_screen.dart';
import 'size_config.dart';
import 'styling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(contraints, orientation);
            return MaterialApp(
              title: 'Flutter Demo',
              theme: AppTheme.lightTheme,
              home:  const WelcomeScreen(),
            );
          },
        );
      }
    );
  }
}

