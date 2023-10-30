import 'package:flutter/material.dart';
import 'package:untitled4/OTT2.dart';
import 'package:untitled4/Ott3.dart';
import 'package:expandable_text/expandable_text.dart';
import 'OTT1.dart';

class ws1 extends StatefulWidget {
  const ws1({super.key});

  @override
  State<ws1> createState() => _ws1State();
}

class _ws1State extends State<ws1> {
  @override
  String Title ="Expandable text";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: TextButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Ott3()));
        },child: Icon(Icons.arrow_back,color: Colors.white,),),
      ),
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: 390,
              color: Colors.blueAccent,
            ),
            RichText(text: TextSpan(text: "Money heist session 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white
            ))),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: RichText(text: TextSpan(text: "2023   -",style: TextStyle(color: Colors.white))),
                  ),
                  RichText(text: TextSpan(text: "  2h 33m   -",style: TextStyle(color: Colors.white))),
                  RichText(text: TextSpan(text: "  5 Languages   -",style: TextStyle(color: Colors.white))),
                  RichText(text: TextSpan(text: "  U/A 18+  ",style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(onPressed: (){},child: Text("Watch now",style: TextStyle(color: Colors.orangeAccent),),),
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
                  RichText(text: TextSpan(text: " Emotional  |",style: TextStyle(color: Colors.white)),),
                  RichText(text: TextSpan(text: " Roberry  |",style: TextStyle(color: Colors.white)),),
                  ],
              ),
            ),
            Container(
              height: 170,
              width: 330,
              child:ExpandableText("A criminal mastermind who goes by  has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain. To help him carry out the ambitious p The group of thieves take hostages to aid in their negotiations with the authorities, who strategize to come up with a way to capture The Professor.",style:TextStyle(color: Colors.white),collapseText:"show less",expandText: "show more",maxLines: 3,)
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                height: 220,
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
    );
  }
}
