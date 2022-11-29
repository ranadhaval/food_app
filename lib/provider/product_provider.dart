import 'package:flutter/cupertino.dart';
import 'package:food_app/product_model/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class product_provider with ChangeNotifier {
  List<product_model> herbs_product_List = [];

  late product_model PRODUCT_MODEL;
  fatch_herbs_product_data() async {
    List<product_model> NEW_LIST = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("hearbs_product").get();

    value.docs.forEach((element) {
      print(element.data());
      PRODUCT_MODEL = product_model(
          product_image: element.get("product_image"),
          product_name: element.get("product_name"),
          product_price: element.get("product_price"));
      NEW_LIST.add(PRODUCT_MODEL);
    });
    herbs_product_List = NEW_LIST;
    notifyListeners();
  }

  List<product_model> get GET_DATA_LISTOF_HEARB {
    return herbs_product_List;
  }

  find() {
    List ms_m = herbs_product_List;
    return ms_m;
  }
}
