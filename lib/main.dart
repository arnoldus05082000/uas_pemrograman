import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:uas_43a87006190304/screens/home_scr.dart';
import 'package:uas_43a87006190304/screens/profile_scr.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
