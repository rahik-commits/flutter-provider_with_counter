import 'package:flutter/material.dart';
import 'package:my_app/stateclass.dart';
import 'package:provider/provider.dart';
import 'package:my_app/countScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyProvider(),
      child: MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CountScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
