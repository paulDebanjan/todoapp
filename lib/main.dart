import 'package:flutter/material.dart';
import 'package:todoapp/page/home_page.dart';

import 'package:hive_flutter/hive_flutter.dart';


Future<void> main() async {

  // init hive
  await Hive.initFlutter();
  //open a box
  var box = await Hive.openBox('myBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: HomePage(),
    );
  }
}
