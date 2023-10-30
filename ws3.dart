import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

import 'Ott3.dart';
class ws3 extends StatefulWidget {
  const ws3({super.key});

  @override
  State<ws3> createState() => _ws3State();
}

class _ws3State extends State<ws3> {
  @override
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
              height: 200,
              width: 390,
              color: Colors.blueAccent,
            ),
            RichText(text: TextSpan(text: "Wheel of times season 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white
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
                height: 140,
                width: 330,
                child:ExpandableText("Moiraine, a member of a magical organization, takes five young people on a journey, believing that one of them might be the reincarnation of the Dragon, a powerful individual prophesied to save the world or destroy it.",style:TextStyle(color: Colors.white),collapseText:"show less",expandText: "show more",maxLines: 3,)
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
