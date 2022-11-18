import 'package:flutter/material.dart';

class pag_inicio extends StatefulWidget {
  const pag_inicio({super.key});

  @override
  State<pag_inicio> createState() => _pag_inicioState();
}

class _pag_inicioState extends State<pag_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(image: AssetImage("Logo.PNG")),
      ),
    );
  }
}
