import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class Getting_Statrted_page extends StatelessWidget {
  const Getting_Statrted_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 81, 80, 1),
      // bottomSheet:BottomSheet(onClosing: () {
      //
      // }, builder: builder),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/delivery-man 2.png"),
            height: 500,
            width: 470,
          ),
          Container(
            // alignment: Alignment(15, 50),
            height: 240,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/text.png",width: 220,),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Home  delivery and online reservation \n    system for retaurants and cafe",
                    style: TextStyle(color: Colors.grey,
                    fontSize: 12),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                          backgroundColor: const Color.fromRGBO(250, 46, 46, 0.7647058823529411),
                      fixedSize: Size(160, 55)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login_page(),));
                      },
                      child: Text("Get Started",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
