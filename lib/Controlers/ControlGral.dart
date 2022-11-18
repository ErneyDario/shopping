import 'package:get/get.dart';
import 'package:reto2/clases/products.dart';

class ControlGral extends GetxController {
  final _pos = 0.obs;
  final prod = <products>[].obs;

  @override
  void onInit() {
    prod.add(products(1, "Croissant", "assets/croissant.png", 3500, 0));
    prod.add(products(2, "Galleta Chocolate", "assets/galletas.png", 5000, 0));
    prod.add(
        products(3, "Mogolla de Uvas pasas", "assets/mogollas.png", 8000, 0));
    super.onInit();
  }

  void cargarPos(int x) {
    _pos.value = x;
  }

  void actCant(int pos, int nCant) {
    prod[pos].cant = nCant;
  }

  int totalPagar() {
    int tot = 0;
    for (var i = 0; i < prod.length; i++) {
      tot = tot + prod[i].cant * prod[i].price;
    }
    return tot;
  }

  int get posicion => _pos.value;
}
