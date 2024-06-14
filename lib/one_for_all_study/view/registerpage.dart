import 'package:flutter/material.dart';

import '../widgets/backgrounddimage.dart';

class Register_page extends StatelessWidget {
  const Register_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.brown[400],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Center(child: Text("Register_here")),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    hintText: "Enter your Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    hintText: "Enter Your Confirm",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(color: Colors.brown[300],shape:StadiumBorder(),minWidth: 200,height: 42,
              onPressed: () {},
              child: Text("LOGIN"),
            ),
            SizedBox(height: 19,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I have a account",),
                TextButton(onPressed: () {}, child: Text('login here',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),

              ],
            )

          ],
        ),
      )
    ],);
  }
}


