import 'package:flutter/material.dart';
import 'package:studykitapp/one_for_all_study/view/registerpage.dart';

import '../widgets/backgrounddimage.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.brown[400],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Center(child: Text("Login_here")),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Enter Your Email or PhoneNumber",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(style: TextStyle(fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Enter Your password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),)),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(color: Colors.brown[300],shape:StadiumBorder(),minWidth: 200,height: 42,
              onPressed: () {},
              child: Text("Register"),
            ),
            SizedBox(height: 19,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account",),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register_page()));
                }, child: Text('Register Now',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),

              ],
            )

          ],
        ),
      )
    ],);
  }
}
