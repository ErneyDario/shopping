import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/Controlers/ControlGral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  ControlGral control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: (Colors.lightBlue[50])),
                child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/49/c8/e4/49c8e403cd1929e9e7b02126824ff831.jpg"),
                    ),
                    accountName: Text("Juan Camilo Arangi"),
                    accountEmail: Text("juank.bch@gmail.com"))),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  title: Text("Inicio"),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    control.cargarPos(0);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Comprar"),
                  leading: Icon(Icons.shopping_bag_outlined),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    control.cargarPos(1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Mi Carrito"),
                  leading: Icon(Icons.shopping_cart_checkout),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    control.cargarPos(2);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Acerca de..."),
                  leading: Icon(Icons.person_pin),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: () {
                    control.cargarPos(3);
                    Navigator.pop(context);
                  },
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
