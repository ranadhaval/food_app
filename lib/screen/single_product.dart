import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/product_model/product_model.dart';
import 'package:food_app/screen/product%20overview/product_overview.dart';

class prodcst extends StatelessWidget {
  final String product_name;
  final String product_image;
  final Function ontap;

  prodcst(
      {
        // required this.pp_l,
        required this.ontap,
      required this.product_image,
      required this.product_name});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 210,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ontap go to the image

              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => produst_overview(
                            image: product_image, name: product_name))),
                child: Expanded(
                  flex: 3,
                  child: Image.network(product_image),
                ),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${55}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                10,
                              )),
                          width: 24,
                          height: 40,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: SingleChildScrollView(
                                child: Row(
                                  children: [
                                    Text(
                                      "50 gram",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              )),
                        )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      width: 24,
                      height: 40,
                      child: Center(child: Text("1")),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
