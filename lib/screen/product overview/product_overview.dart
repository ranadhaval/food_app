import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/config/config.dart';

// import 'dart:ui';
enum Singing_c { fill, outline }

class produst_overview extends StatefulWidget {
  String image, name;

  produst_overview({required this.image, required this.name});

  @override
  State<produst_overview> createState() => _produst_overviewState();
}

class _produst_overviewState extends State<produst_overview> {
  Singing_c _character = Singing_c.fill;
  Widget bottom_navigator({
    required Color color,
    required IconData iconData,
    required Color backgroundcolor,
    required Color icon_color,
    required String title,
  }) {
    return Expanded(
        child: Container(
      height: 50,
      color: backgroundcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: icon_color,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "${title}",
            style: TextStyle(color: color),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottom navigation bar

      bottomNavigationBar: Row(
        children: [
          bottom_navigator(
              color: Colors.white,
              backgroundcolor: Colors.black,
              icon_color: Colors.white,
              iconData: Icons.favorite,
              title: 'Add To Whishlist'),
          bottom_navigator(
              color: Colors.black,
              backgroundcolor: Colors.amber,
              icon_color: Colors.black,
              iconData: Icons.shop_outlined,
              title: 'Go To Cart')
        ],
      ),

      // backgroundColor: background,
      backgroundColor: Colors.white,

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Product Overview",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primary,
        // actionsIconTheme: ,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                height: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("${widget.name}"),
                      subtitle: Text("50 dollers"),
                    ),
                    Container(
                      height: 250,
                      padding: EdgeInsets.all(4),
                      child: Image.network("${widget.image}"),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Text(
                        "Available options",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.green,
                                ),
                                Radio(
                                  activeColor: Colors.green,
                                  onChanged: (value) {
                                    setState(() {
                                      _character == value;
                                    });
                                  },
                                  groupValue: _character,
                                  value: Singing_c.fill,
                                )
                              ],
                            ),
                            Text("\$50"),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  Text(
                                    "ADD ",
                                    style: TextStyle(color: Colors.amber),
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              )),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About this product",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "This thread has been automatically locked since there has not been any recent activity after it was closed. If you are still experiencing a similar issue, please open a new bug, including the output of flutter doctor -v and a minimal reproduction of the issue"),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
