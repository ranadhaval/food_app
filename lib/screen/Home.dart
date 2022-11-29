import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/product_model/product_model.dart';
import 'package:food_app/provider/product_provider.dart';
import 'package:food_app/screen/drawer.dart';
import 'package:food_app/screen/SEARCH/search_screen.dart';
import 'package:food_app/screen/single_product.dart';
import 'package:provider/provider.dart';
import 'product overview/product_overview.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // late product_provider provider_product;
  List<product_model> new_List = [];

  @override
  Widget build(BuildContext context) {
    final product_provider_X = Provider.of<product_provider>(context);
    new_List = product_provider_X.find();
    product_provider providerProduct = Provider.of<product_provider>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6d382),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd6d382),
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder) => Search()));
              },
              icon: Icon(
                Icons.search,
                size: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Color(0xffd6d382),
                radius: 15,
                child: Icon(
                  Icons.shop,
                  size: 17,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5aKbFAQxHh6cE9Up7pU1ps9WwMwDX0Jh_27RstdVFq5FtfQtiJF6UWWsZB_ZVjcILPjo&usqp=CAU")),

                  borderRadius: BorderRadius.circular(20),
                  // color: Colors.black
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          // color: Colors.blue,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 160, bottom: 8),
                                child: Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "vegi",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            BoxShadow(
                                                offset: Offset(
                                                  3,
                                                  3,
                                                ),
                                                color: Colors.black,
                                                blurRadius: 5)
                                          ]),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "30% OFF",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                "fOR ALL VEGETEARIEN PRODUCT ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                        )),
                    Expanded(child: Container())
                  ],
                ),
              ),
            ),

            /////////////////////////////////////////
            ///
            ///

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text("HERBAL PRODUCTS"),
            //       Text("VIEW ALL"),
            //     ],
            //   ),
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       ped(),
            //       ped(),
            //       ped(),
            //     ],
            //   ),
            // )

            /////////////////
            ///
            ///
            ///
            nn(),
            nn(),
            nn1(),
          ],
        ),
      ),
    );
  }

  Widget ped() {
    return Padding(
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

            Expanded(
              flex: 2,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY6R75XV8OsXQnYN88se6spLny7KORcdKEbAwbo8j0TqflD-juiav5Xms_RIgUU7qjIVA&usqp=CAU"),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "fresh basil",
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
    );
  }

  Widget nn() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("HERBAL PRODUCTS"),
              Text("VIEW ALL"),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:

              // ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   itemBuilder: (BuildContext context, int index) {
              //     return prodcst(
              //         pp_l: new_List[index],
              //         ontap: () {},
              //         product_image:
              //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY6R75XV8OsXQnYN88se6spLny7KORcdKEbAwbo8j0TqflD-juiav5Xms_RIgUU7qjIVA&usqp=CAU",
              //         product_name: "fresh basil");
              //   },
              //   itemCount: new_List.length,
              // )

              // Row(
              //     children: provider_product.GET_DATA_LISTOF_HEARB.map((e) {
              //   return prodcst(
              //       product_image: e.product_image,
              //       product_name: e.product_name,
              //       ontap: () {});
              // }).toList()

              Row(
            children: [
              prodcst(
                  product_image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY6R75XV8OsXQnYN88se6spLny7KORcdKEbAwbo8j0TqflD-juiav5Xms_RIgUU7qjIVA&usqp=CAU",
                  product_name: "fresh basil",
                  ontap: () {}),
              prodcst(
                product_image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqg6Dyf31W6IR5C2ZYMq8TimP132XuYVYElpBoGbES2bHitn-0mILQ8YMb2uKghMgE9c4&usqp=CAU",
                product_name: "fruits ff",
                ontap: () {},
              ),
              prodcst(
                product_image:
                    "https://cdn.imgbin.com/2/19/24/imgbin-health-food-diet-nutrition-eating-health-aY1sFpW0iMmV4GwzuZd6zX10R.jpg",
                product_name: "fresh basil",
                ontap: () {},
              )
            ],
          ),
        )
      ],
    );
  }

  Widget nn1() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("FRUITS PRODUCTS"),
              Text("VIEW ALL"),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              prodcst(
                product_image:
                    "https://w7.pngwing.com/pngs/507/603/png-transparent-fruit-salad-snow-cone-bowl-graphy-the-fruit-in-the-glass-bowl-natural-foods-glass-wine-glass.png",
                product_name: "fruit basket",
                ontap: () {},
              ),
              prodcst(
                product_image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKE6h7J5nDF8VoK9v7EeUDbRYiMHX5NcdX_XT3kcHfnq8Qd1SVoegw8RvyAZK4D2C3YaQ&usqp=CAU",
                product_name: "bananas",
                ontap: () {},
              ),
              prodcst(
                product_image:
                    "https://w7.pngwing.com/pngs/507/603/png-transparent-fruit-salad-snow-cone-bowl-graphy-the-fruit-in-the-glass-bowl-natural-foods-glass-wine-glass.png",
                product_name: "fresh basil",
                ontap: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}
