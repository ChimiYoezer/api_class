
import 'package:api_class/homepage.dart';
import 'package:api_class/page1.dart';
import 'package:api_class/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      getPages: [
        GetPage(name: "/splash", page: ()=>WallpaperPage()),
        GetPage(name: "/page1", page: ()=>WallpaperDescription()),

        GetPage(name: "/page2", page: ()=>FullscreenPage()),
      ],

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
