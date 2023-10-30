import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:untitled4/OTT1.dart';
import 'package:untitled4/Ott3.dart';
import 'package:untitled4/lcu1.dart';
import 'package:untitled4/lcu2.dart';
import 'package:untitled4/lcu3.dart';

class Ott2 extends StatefulWidget {
  const Ott2({super.key});

  @override
  State<Ott2> createState() => _OttState();
}
class _OttState extends State<Ott2> {
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
          )
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
                  child: TextButton(onPressed: (){}, child: Text("LCU",style: TextStyle(color: Colors.orangeAccent),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Ott3()));
                  }, child: Text("Web Series",style: TextStyle(color: Colors.orangeAccent),)),
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
                          image: DecorationImage(image: AssetImage("assets/lbs.jpg"),fit: BoxFit.fill)),
                    );
                  }
              ),
            ),
            DotsIndicator(dotsCount: 6,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Leo",style: TextStyle(fontSize:20,color: Colors.white),),
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>lcu1()));
                    },
                      child: Column(
                          children: [
                            Container(
                              height:160,
                              width:120,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(image:AssetImage("assets/leo.jpg"
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
                  Text("Vikram",style: TextStyle(color: CupertinoColors.white,fontSize: 20),),
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>lcu2()));
                    },
                      child: Column(
                          children: [
                            Container(
                              height:160,
                              width:120,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(image:AssetImage("assets/vk2.jpg"
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
                  Text("Kaithi",style: TextStyle(color: Colors.white,fontSize: 20),),
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>lcu3()));
                    },
                      child: Column(
                          children: [
                            Container(
                              height:160,
                              width:120,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(image:AssetImage("assets/kaithi.jpg"
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
                  Text("Upcoming",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 240,
              width: 250,
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
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/cred.jpg"),fit: BoxFit.fill)),
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
