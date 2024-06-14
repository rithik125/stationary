import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: BackgroundImage(),));
}
class BackgroundImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/stationeryappbackgroundimage.jpg"),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black45, BlendMode.darken))),
    );
  }

}
