import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'lappro.dart';
import 'mn1.dart';
import 'mn2.dart';

class myntrah extends StatefulWidget {
  const myntrah({super.key});

  @override
  State<myntrah> createState() => _myntrahState();
}

class _myntrahState extends State<myntrah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.alarm_on_sharp,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>mbe()) );
                      },child: Text("mobiles",style: TextStyle(fontSize: 18),),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>srch()) );
                      },child: Text("Electronics",style: TextStyle(fontSize: 18)),),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height:170,
              width: 400,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          Container(
                            height:140,
                            width:97,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(image:AssetImage("assets/mbe.jpg"
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
            Container(
              height: 250,
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
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/sm1.jpg"))),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("SMART WATCH",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                ),
              ),
            ),
            Container(
              height:200,
              width: 400,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          Container(
                            height:170,
                            width:140,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(image:AssetImage("assets/watch.jpg"
                              ),fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ]
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text("TAB",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Container(
              height:200,
              width: 400,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          Container(
                            height:170,
                            width:140,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(image:AssetImage("assets/tap.jpg"
                              ),fit: BoxFit.fill
                              ),
                            ),
                          ),
                        ]
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text("BEST OF THE WEEK",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Container(
              height: 400,
              width: 400,
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: 400,
                    decoration: BoxDecoration(

                      image: DecorationImage(
                          image: AssetImage("assets/mnp1.png")),
                    ),
                  ),
                  Container(
                    height:240,
                    width: 400,
                    child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder:(BuildContext Contex,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              children: [
                                GestureDetector(onTap:(){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>lap()) );
                                },
                                  child:
                                  Container(
                                    height:200,
                                    width:140,
                                    decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(40),
                                      image: DecorationImage(image:AssetImage("assets/lap5.jpg"),fit: BoxFit.fill,
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
          ],
        ),
      ),
    );
  }
}