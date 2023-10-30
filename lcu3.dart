import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'OTT2.dart';

class lcu3 extends StatefulWidget {
  const lcu3({super.key});

  @override
  State<lcu3> createState() => _lcu3State();
}

class _lcu3State extends State<lcu3> {
  @override
  String Title = "Expandable text";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: TextButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Ott2()));
        },child: Icon(Icons.arrow_back,color: Colors.white,),),
      ),
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                width: 390,
                color: Colors.blueAccent,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(text: TextSpan(text: "Kaithi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white
                ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    RichText(text: TextSpan(text: "   2023   -",style: TextStyle(color: Colors.white))),
                    RichText(text: TextSpan(text: "  2h 33m   -",style: TextStyle(color: Colors.white))),
                    RichText(text: TextSpan(text: "  5 Languages   -",style: TextStyle(color: Colors.white))),
                    RichText(text: TextSpan(text: "  U/A 13+  ",style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 300,
                child: TextButton(onPressed: (){},child: Text("Watch now",style: TextStyle(fontSize: 20,color: Colors.orangeAccent),),),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(text: TextSpan(text: "Comedy  |",style: TextStyle(color: Colors.white)),),
                    ),
                    RichText(text: TextSpan(text: " Thriller  |",style: TextStyle(color: Colors.white)),),
                    RichText(text: TextSpan(text: "  Drama  |",style: TextStyle(color: Colors.white)),),
                    RichText(text: TextSpan(text: " Entertainment |",style: TextStyle(color: Colors.white)),),
                  ],
                ),
              ),
              Container(
                  height: 110,
                  width: 330,
                  child:ExpandableText("ime after leaving prisoDilli, an ex-convict, endeavours to meet his daughter for the first tn. However, his attempts are interrupted due to a drug raid planned by Inspector Bejoy.",style:TextStyle(color: Colors.white),collapseText: "See less",expandText: "See more",maxLines: 3,)
              ),
              Row(
                children: [
                  Column(
                    children: [
                      TextButton(onPressed: (){}, child: Icon(Icons.add,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Watchlist",style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(onPressed: (){}, child: Icon(Icons.share_outlined,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Share",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(onPressed: (){}, child: Icon(Icons.arrow_downward_sharp,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Download",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("More like this",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ],
              ),
              Container(
                  height: 200,
                  width: 380,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (BuildContext context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 160,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage("assets/"),fit: BoxFit.fill),
                              border: Border.all(),
                            ),
                          ),
                        );
                      }
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
