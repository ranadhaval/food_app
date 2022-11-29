// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/screen/drawer.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Widget List_Tile({
    required String name,
    required IconData icon_data,
  }) {
    return ListTile(
      leading: Icon(icon_data),
      trailing: Icon(Icons.arrow_forward_ios),
      title: Text("${name}"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      drawer: drawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.amber,
              ),
              Container(
                height: 503,
                width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    // color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),

                child: ListView(
                  children: [
                    Container(
                      width: 250,
                      height: 70,
                      padding: EdgeInsets.only(left: 90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "rana dhaval",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "rd143761@gmail.com",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.red,
                            child: CircleAvatar(
                              radius: 12,
                              child: Icon(
                                Icons.edit,
                                color: Colors.black,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    List_Tile(name: "MY order", icon_data: Icons.shop_outlined),
                    List_Tile(
                        name: "MY delivery location",
                        icon_data: Icons.location_on_outlined),
                    List_Tile(
                        name: "Refer A  Firend",
                        icon_data: Icons.person_outline),
                    List_Tile(
                        name: "Terms & Condition",
                        icon_data: Icons.file_copy_outlined),
                    List_Tile(
                        name: "privacy policy",
                        icon_data: Icons.policy_outlined),
                    List_Tile(name: "About ", icon_data: Icons.add_chart),
                    List_Tile(name: "Log Out", icon_data: Icons.exit_to_app)
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn-media-2.freecodecamp.org/w1280/5f9c9c8c740569d1a4ca32d2.jpg"),
                radius: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
