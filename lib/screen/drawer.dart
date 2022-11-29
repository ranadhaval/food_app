import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/profile.dart';
import 'package:food_app/screen/review_cart/review.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  Widget lisa({required IconData ico, required String name, Function? ontap}) {
    return ListTile(
      title: Text(name),
      leading: Icon(ico),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: ListView(children: [
        DrawerHeader(
            child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn-media-2.freecodecamp.org/w1280/5f9c9c8c740569d1a4ca32d2.jpg"))),
            ),
            SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("welcome user123", style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    child: OutlinedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: Text(
                        "login",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        lisa(ico: Icons.home, name: "HOME"),
        InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => review_cart()));
            },
            child: lisa(ico: Icons.shop_2_outlined, name: "Review cart")),
        InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => profile()));
            },
            child: lisa(ico: Icons.person, name: "My Profile")),
        lisa(ico: Icons.star, name: "Rating &Review"),
        lisa(ico: Icons.heart_broken, name: "Wishlist"),
        lisa(ico: Icons.copy_outlined, name: "Raise a Complaint"),
        lisa(ico: Icons.format_quote_sharp, name: "FAQS"),
        Container(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Contact Support"),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Call us:   "), Text("+91 1234567854")],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Mail us:   "), Text("mail@gmail.com")],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
