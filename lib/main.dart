import 'package:flutter/material.dart';

import 'config/injection/injection.dart';
import 'screens/auth_screen/auth_screen.dart';
import 'values/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZAI_WEB',
      theme: theme(),
      home: AuthScreen(),
    );
  }
}
