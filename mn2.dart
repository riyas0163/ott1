
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'mobile.dart';
import 'modelclass 4.dart';
import 'modelclass3.dart';
import 'mynta.dart';

class mbe extends StatefulWidget {
  const mbe({super.key});

  @override
  State<mbe> createState() => _mbeState();
}

class _mbeState extends State<mbe> {
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Search products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
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
                          image: DecorationImage(image: AssetImage("assets/sm1.jpg"),fit: BoxFit.fill)),
                    );
                  }
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Top deals of the week",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(width: 100,),
              ],
            ),
            Container(
              height: 250,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 160,
                      childAspectRatio: 2/2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                itemCount: m4.length,
                  itemBuilder: (BuildContext ctx,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height:90,
                            width: 100,
                            alignment: Alignment.center,
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage( m4[index].image),fit: BoxFit.fill),

                             ),
                          ),
                           Text(m4[index].text),
                        ],
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Smartphones",style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            Container(
              height:200,
              width: 400,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: smart.length,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          GestureDetector(onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>mobile()) );
                          },
                            child: Container(
                              height:140,
                              width:97,
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(image:AssetImage(smart[index].image
                                ),
                                ),
                              ),
                            ),
                          ),
                         Text(smart[index].text),
                        ]
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("low price",style: TextStyle(fontSize: 22),),
                ),
              ],
            ),
            Container(
              height:280,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: m4.length,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          Container(
                            height:200,
                            width:97,
                            decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(image:AssetImage(m4[index].image
                             ),
                             ),
                            ),
                          ),
                        ]
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}