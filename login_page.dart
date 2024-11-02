import 'package:flutter/material.dart';
import 'package:pizza_task1/Home_page.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 60, right: 50),
            child: Image.asset("assets/text.png"),
          ),
          Padding(
            padding: const EdgeInsets.only( left: 35, right: 35,bottom: 10),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      label: Text("Email"),
                      hintText: "Type your e-mail",
                      hintStyle: TextStyle(color: Colors.black26)),
                ),
                SizedBox(
                  height: 35,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Color.fromRGBO(250, 46, 46, 0.7647058823529411),
                      ),
                      label: Text("Password"),
                      hintText: "Type your password",
                      hintStyle: TextStyle(color: Colors.black26)),
                ),

              ],
            )),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(270, 50),
                elevation: 20,
                backgroundColor: const Color.fromRGBO(250, 46, 46, 0.7647058823529411),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },
            child: Text("Login",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
