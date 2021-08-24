import 'package:flutter/material.dart';
import 'package:offlinecourse/home.dart';


//import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        title: 'Worker ui',
        home: Home(),
        theme: ThemeData(primaryColor: Colors.blueAccent),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
