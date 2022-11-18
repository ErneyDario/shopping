import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/Controlers/ControlGral.dart';

class pag_comprar extends StatefulWidget {
  const pag_comprar({super.key});

  @override
  State<pag_comprar> createState() => _pag_comprarState();
}

class _pag_comprarState extends State<pag_comprar> {
  ControlGral contP = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/logo.png"))),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Obx(
            () => ListView.builder(
              itemCount: contP.prod.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.blue[50],
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                      (contP.prod[index].image),
                    )),
                    //leading: Image(image: NetworkImage(contP.prod[index].image)),
                    title: Row(children: [
                      Text(contP.prod[index].name),
                      VerticalDivider(),
                      Text(contP.prod[index].price.toString())
                    ]),
                    trailing: Text(
                      contP.prod[index].cant.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              int ncant = contP.prod[index].cant - 1;

                              if (ncant < 0) {
                                ncant = 0;
                              }
                              contP.actCant(index, ncant);
                              contP.prod.refresh();
                            },
                            icon: Icon(Icons.arrow_drop_down)),
                        VerticalDivider(),
                        IconButton(
                            onPressed: () {
                              int ncant = contP.prod[index].cant + 1;
                              contP.actCant(index, ncant);
                              contP.prod.refresh();
                            },
                            icon: Icon(Icons.arrow_drop_up))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
