import 'package:flutter/material.dart';

class singleitem extends StatelessWidget {
  bool is_bool = false;
  singleitem({required this.is_bool});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                height: 100,
                child: Center(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY6R75XV8OsXQnYN88se6spLny7KORcdKEbAwbo8j0TqflD-juiav5Xms_RIgUU7qjIVA&usqp=CAU"),
                ),
              )),
              Expanded(
                  child: Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: is_bool == false
                      ? MainAxisAlignment.spaceAround
                      : MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Product Name",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "50\$/50 gram ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    is_bool == false
                        ? Container(
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(children: [
                              Expanded(
                                child: Text(
                                  "50 gram ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.green,
                                ),
                              )
                            ]),
                          )
                        : Text("50 gram"),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                height: 100,
                padding: is_bool == false
                    ? EdgeInsets.symmetric(horizontal: 15, vertical: 32)
                    : EdgeInsets.only(left: 15, right: 15),
                child: is_bool == false
                    ? Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  "ADD",
                                  style: TextStyle(color: Colors.yellow),
                                )
                              ]),
                        ),
                      )
                    : Column(
                        children: [
                          Icon(
                            Icons.delete,
                            size: 30,
                            color: Colors.black54,
                          ),
                          Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Text(
                                      "ADD",
                                      style: TextStyle(color: Colors.yellow),
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
              )),
              is_bool == false
                  ? Container()
                  : Divider(
                      height: 1,
                      color: Colors.black45,
                    )
            ],
          ),
        ),
        is_bool == false
            ? Container()
            : Divider(
                height: 1,
                color: Colors.black45,
              )
      ],
    );
  }
}
