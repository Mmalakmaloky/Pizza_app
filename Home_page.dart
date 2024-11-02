import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_task1/itemPage.dart';

import 'ListOf_items.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<ListOfItems> foodItems = [
    ListOfItems(
        title: "Melting Cheese",
        decription: "44 Calories",
        img: "assets/Pizza 4.png",
        price: "\$9.47"),
    ListOfItems(
        title: "Pizza Capricciosa",
        decription: "54 Calories",
        img: "assets/Pizza 3.png",
        price: "\$12.55"),
    ListOfItems(
        title: "Margherita",
        decription: "33 Calories",
        img: "assets/Pizza 4.png",
        price: "\$4.8"),
    ListOfItems(
        title: "Pizza Capricciosa",
        decription: "54 Calories",
        img: "assets/Pizza 3.png",
        price: "\$12.55"),
    ListOfItems(
        title: "Margherita2",
        decription: "76 Calories",
        img: "assets/Pizza 4.png",
        price: "\$10.8")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(250, 46, 46, 0.7647058823529411),
              child: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              ),
            ),
          )
        ],
        // leading: Drawer(
        //   child: Icon(Icons.list),
        // ),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Malak",
              style: TextStyle(
                  color: Color.fromRGBO(250, 46, 46, 0.7647058823529411)),
            ),
            Text(
              "Find your Delicious Food",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                //.........................watch later
                Image.asset("assets/Food Type 1.png"),
                SizedBox(
                  width: 18,
                ),
                Image.asset("assets/Food Type 1 (1).png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Text(
                    "Italian",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Japanese",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Popular",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodItems.length,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ItemPage',
                          arguments: foodItems[index]);
                    },
                    child: Container(
                      height: 10,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // verticalDirection: VerticalDirection.up,
                        children: [
                          Text(
                            foodItems[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              // wordSpacing: 3
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            foodItems[index].decription,
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    250, 46, 46, 0.7647058823529411)),
                          ),
                          Image.asset(
                            foodItems[index].img,
                          ),
                          Text(
                            foodItems[index].price,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromRGBO(250, 46, 46, 0.7647058823529411),
                      fixedSize: Size(280, 50),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text(
                    "ADD TO CARD",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor:  Color.fromRGBO(250, 46, 46, 0.7647058823529411),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled ,color:  Color.fromRGBO(250, 46, 46, 0.7647058823529411),),
              label: "Home",
              backgroundColor: Color.fromRGBO(250, 46, 46, 0.7647058823529411)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person ,color:  Color.fromRGBO(250, 46, 46, 0.7647058823529411)),
              label: "Profile",
              backgroundColor: Color.fromRGBO(250, 46, 46, 0.7647058823529411))
        ],
      ),
    );
  }
}
