import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ListOf_items.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int counter = 1;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  void decrementCounter() {
    setState(() {
      if (counter > 1)
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    // double totalPrice = foodItem.price! * counter;
    ////////////////////////////////////////////////arguments => Navigator(Named)
    final foodItem = ModalRoute.of(context)!.settings.arguments as ListOfItems;
    return Scaffold(
      body: Center(
        child: Container(
          height: 710,
          child: Column(
            children: [
              Text(
                foodItem.title!,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                foodItem.price.toString()!,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: 180,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(foodItem.img),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(250, 46, 46, 0.7647058823529411)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: decrementCounter,
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  Text('$counter',style: Theme.of(context).textTheme.headline5,),
                  IconButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(250, 46, 46, 0.7647058823529411)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),

                //////what is the wrong with this code????
                      // onPressed: () {
                      //  incrementCounter;
                      // },
                      onPressed: incrementCounter,
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ],
              ),
              if(counter>0) Text(" ${foodItem.price}  * $counter ",style: TextStyle(color: Colors.grey),),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.star ,color: Colors.amber ,size: 30,),
                    Text("4.9",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(
                      width: 37,
                    ),
                    Icon(Icons.local_fire_department ,color: Colors.amber ,size: 30,),
                    Text(foodItem.decription!,style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    )),
                    SizedBox(
                      width: 35,
                    ),
                    Icon(Icons.alarm ,color: Colors.blue ,size: 25,),
                    Text("20-30 min",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(250, 46, 46, 0.7647058823529411),
                  fixedSize: Size(280, 55),
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),onPressed: (){

              }, child: Text("ADD TO CARD",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
