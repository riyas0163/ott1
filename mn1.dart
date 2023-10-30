
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'modelclass2.dart';
import 'mynta.dart';

class srch extends StatefulWidget {
  const srch({super.key});

  @override
  State<srch> createState() => _srchState();
}

class _srchState extends State<srch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:TextButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>myntrah()) );
        }, child: Icon(Icons.arrow_back),),
        title: Container(
          height: 40,
          width: 230,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search for brands & products",
                border: OutlineInputBorder()
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic,color: Colors.black,),
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Text("search products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            ),
            Container(
              height: 150,
              child:CarouselSlider.builder( options: CarouselOptions(
                height: 350,
                aspectRatio: 16/9,
                viewportFraction: 0.9,
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
              ),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int itemindex, int pageViewIndex)
                  {
                    return Container(
                      height: 200,
                      width: 450,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/ece.jpg"),fit: BoxFit.fill)),
                    );
                  }
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  child: Text("MOST SEARCHED ARTICLES",style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 100,),
              ],
            ),
            Container(
              height: 250,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 180,
                      childAspectRatio: 2/2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                 // itemCount: dec.length,
                  itemBuilder: (BuildContext ctx,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage( grid[index].image),fit: BoxFit.fill),

                            ),
                          ),
                          Text(grid[index].text)
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}