import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/Controlers/ControlGral.dart';
import 'package:reto2/UI/menu.dart';
import 'package:reto2/UI/pag_acercade.dart';
import 'package:reto2/UI/pag_comprar.dart';
import 'package:reto2/UI/pag_inicio.dart';
import 'package:reto2/UI/pag_micarrito.dart';

List pages = [pag_inicio(), pag_comprar(), pag_micarrito(), pag_acercade()];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'JUANK',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Alicia Artesanal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ControlGral control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Obx(() => pages[control.posicion]),
      drawer: menu(),
    );
  }
}
