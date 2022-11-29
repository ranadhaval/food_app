import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/widgets/single_items.dart';

class review_cart extends StatelessWidget {
  const review_cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text(
          "\$170.00",
          style: TextStyle(color: Colors.green[900]),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            onPressed: () {},
            child: Text("Submit"),
            color: Colors.amber,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Review Cart",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 100),
          singleitem(
            is_bool: true,
          ),
          singleitem(
            is_bool: true,
          ),
          singleitem(
            is_bool: true,
          ),
          singleitem(
            is_bool: true,
          ),
          singleitem(
            is_bool: true,
          ),
          singleitem(
            is_bool: true,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
