import 'package:flutter/material.dart';

class pag_acercade extends StatefulWidget {
  const pag_acercade({super.key});

  @override
  State<pag_acercade> createState() => _pag_acercadeState();
}

class _pag_acercadeState extends State<pag_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/logo.png"))),
      child: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Elvira Baron Martinez"),
              subtitle: Text("Integrante 1"),
              leading: Icon(Icons.person),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Erney Garcia Prado"),
              subtitle: Text("Integrante 2"),
              leading: Icon(Icons.person),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Jose Benitez Lopez"),
              subtitle: Text("Integrante 3"),
              leading: Icon(Icons.person),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Juan Albornoz Murillo"),
              subtitle: Text("Integrante 4"),
              leading: Icon(Icons.person),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Juan Camilo Arango"),
              subtitle: Text("Integrante 5"),
              leading: Icon(Icons.person),
            ),
          )
        ],
      ),
    );
  }
}
