import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcon user"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintStyle: TextStyle(fontSize: 20),
                  hintText: "Search here",
                    suffixIcon: Icon(Icons.search_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2, mainAxisSpacing: 2, crossAxisCount: 4),
                children: List.generate(
                  8,
                  (index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://www.shutterstock.com/image-photo/bright-notepads-colored-pens-on-600nw-2043079235.jpg"),
                      ),
                      Text("Product Name")
                    ],
                  ),
                ),
              ),
              CarouselSlider(items: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1621535484902-f946de404eb4?q=80&w=386&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1621535484902-f946de404eb4?q=80&w=386&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1621535484902-f946de404eb4?q=80&w=386&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1621535484902-f946de404eb4?q=80&w=386&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1621535484902-f946de404eb4?q=80&w=386&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
                ),

              ], options: CarouselOptions(
                height: 280,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),),
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){})

            ],
          ),
        ),
      ),
    );
  }
}
