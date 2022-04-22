import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:udevs_task_image/first_page.dart';

import 'package:udevs_task_image/login_page.dart';
import 'package:udevs_task_image/profil_page.dart';
import 'package:udevs_task_image/register_page.dart';
import 'package:udevs_task_image/register_page_second.dart';
import 'package:udevs_task_image/theem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
      title: 'Flutter Demo',

      home: FirtsPage()
    );
  }
}


