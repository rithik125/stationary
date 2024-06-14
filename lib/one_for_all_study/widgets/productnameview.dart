import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ProductnameView(),));
}

class ProductnameView extends StatelessWidget {
  const ProductnameView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
      return Container(width: 20,
        height: 20,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://i.pinimg.com/564x/12/33/3c/12333ca1cf0da69b33d42f604e4218db.jpg"),
                fit: BoxFit.cover)),
      );
    },itemCount: 4,);
  }
}
