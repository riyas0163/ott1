import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:untitled4/OTT1.dart';
import 'package:untitled4/OTT2.dart';
import 'package:untitled4/ws1.dart';
import 'package:untitled4/ws2.dart';
import 'package:untitled4/ws3.dart';
import 'package:untitled4/ws4.dart';

class Ott3 extends StatefulWidget {
  const Ott3({super.key});

  @override
  State<Ott3> createState() => _OttState();
}
class _OttState extends State<Ott3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/.jpg"),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(100)
            ),
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.language,color: Colors.white,size: 35,),
          ),
        ],
      ),
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Ott()));
                  }, child: Text("All",style: TextStyle(color: Colors.orangeAccent),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Ott2()) );
                  }, child: Text("LCU",style: TextStyle(color: Colors.orangeAccent),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){}, child: Text("Web Series",style: TextStyle(color: Colors.orangeAccent),)),
                ),
              ],
            ),
            Container(
              height: 180,
              width: 390,
              child: CarouselSlider.builder( options: CarouselOptions(
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
                          image: DecorationImage(image: AssetImage("assets/mh1.jpg"),fit: BoxFit.fill)),
                    );
                  }
              ),
            ),
            DotsIndicator(dotsCount: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Money Heist",style: TextStyle(fontSize:20,color: Colors.white),),
                ],
              ),
            ),
            Container(
              height: 180,
              width: 380,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ws1()) );
                    },
                      child: Column(
                          children: [
                            Container(
                              height:160,
                              width:120,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(image:AssetImage("assets/mhs1.jpg"
                                ),fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("After",style: TextStyle(color: CupertinoColors.white,fontSize: 20),),
                ],
              ),
            ),
            Container(
              height: 180,
              width: 380,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ws2()));
                    },
                      child: Column(
                          children: [
                            Container(
                              height:160,
                              width:120,
                              decoration: BoxDecoration(color: Colors.white,
                                border: Border.all(),
                                image: DecorationImage(image:AssetImage("assets/aftr.jpg"
                                ),fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Wheel of times",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            Container(
              height: 180,
              width: 380,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ws3()));
                    },
                      child: Column(
                          children: [
                            Container(
                              height:160,
                              width:120,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(image:AssetImage("assets/wht1.jpg"
                                ),fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Peaky  blinders",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            Container(
              height: 180,
              width: 380,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder:(BuildContext Contex,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>ws4()));
                    },
                      child: Column(
                          children: [
                            Container(
                              height:160,
                              width:120,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(image:AssetImage("assets/pb.jpg"
                                ),fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Squid Game",style: TextStyle(color: Colors.white,fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 350,
              width: 300,
              child: CarouselSlider.builder( options: CarouselOptions(
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
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(image: AssetImage("assets/sq.jpg"),fit: BoxFit.fill)),
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
