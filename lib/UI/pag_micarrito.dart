import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/Controlers/ControlGral.dart';

class pag_micarrito extends StatefulWidget {
  const pag_micarrito({super.key});

  @override
  State<pag_micarrito> createState() => _pag_micarritoState();
}

class _pag_micarritoState extends State<pag_micarrito> {
  ControlGral cntrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/logo.png"))),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cntrl.prod.length,
                itemBuilder: (BuildContext context, int index) {
                  return cntrl.prod[index].cant == 0
                      ? Text("")
                      : Card(
                          color: Colors.blue[50],
                          child: ListTile(
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                              (cntrl.prod[index].image),
                            )),
                            title: Text(cntrl.prod[index].name),
                            subtitle: Row(
                              children: [
                                Text("Precio: " +
                                    cntrl.prod[index].price.toString()),
                                VerticalDivider(),
                                Text("Cant: " +
                                    cntrl.prod[index].cant.toString())
                              ],
                            ),
                            trailing: Text(
                              (cntrl.prod[index].price * cntrl.prod[index].cant)
                                  .toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        );
                },
              ),
            ),
            Divider(),
            Text(
              "Total a Pagar: " + cntrl.totalPagar().toString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.price_check),
                label: Text("Pagar"))
          ],
        ),
      ),
    );
  }
}
