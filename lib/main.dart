import 'package:adeo/Local.dart/controllerlocal.dart';
import 'package:adeo/Local.dart/local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(Mycontroller());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      locale:Get.deviceLocale ,
      translations: Mylocal(),

      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  show(){
    Get.defaultDialog(title:"title",
        textCancel: "cancle",
        textConfirm: "ok",

    );

  }
  @override
  Widget build(BuildContext context) {
     Mycontroller mycontroller= Get.find();

    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Text("1".tr),
          Center(
           child: MaterialButton(child: Text("AR"),onPressed:(){
             mycontroller.initlocall("ar");
           } ,)
    ),
          Center(
           child: MaterialButton(child: Text("EN"),onPressed:(){
             mycontroller.initlocall("en");
           } ,)
    ),

  Center(child:
    MaterialButton(onPressed: show, child: Text("Show"))
    ,)
        ],
      ));
  }
}

