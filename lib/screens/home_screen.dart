import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List CatList = [
    "All",
    "Best selling",
    "Jackets",
    "Shirts",
    "Pants",
    "Bags",
  ];

  List ImgList = [
    "Warm Jacket",
    "Black T-Shirt",
    "Black Pant",
    "Ladies Bag",
    "Pants",
    "Bags"
  ];

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0, left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8Fa),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text("Find your product"),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFFF7F8Fa),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          size: 30,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25, top: 20),
                  alignment: Alignment.center,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 34),
                    child: Row(
                      children: [
                        for (int i = 0; i > CatList.length; i++)
                          Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: CatList[i] == "All"
                                    ? Color(0xFFFD725A)
                                    : Color(0xFFF7F8FA),
                                borderRadius: BorderRadius.circular(18)),
                            child: Text(
                              CatList[i],
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: CatList[i] == "All"
                                      ? Color(0xFFF7F8FA)
                                      : Colors.grey),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
