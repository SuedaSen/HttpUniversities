import 'package:flutter/material.dart';
import 'package:httpuni/httpuniversity/view/httpuniversities.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      home: HttpUni(),
    );
  }
}
