import 'package:flutter/material.dart';

import 'OTT1.dart';

class f4 extends StatefulWidget {
  const f4({super.key});

  @override
  State<f4> createState() => _f4State();
}

class _f4State extends State<f4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: TextButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Ott()));
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
            RichText(text: TextSpan(text: "D block",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white
            ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RichText(text: TextSpan(text: "   2023   -",style: TextStyle(color: Colors.white))),
                  RichText(text: TextSpan(text: "  1h 33m   -",style: TextStyle(color: Colors.white))),
                  RichText(text: TextSpan(text: "  5 Languages   -",style: TextStyle(color: Colors.white))),
                  RichText(text: TextSpan(text: "  U/A 13+  ",style: TextStyle(color: Colors.white))),
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
              child: TextButton(onPressed: (){},child: Text("Watch now",style: TextStyle(color: Colors.orangeAccent),)),
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
                height: 100,
                width: 330,
                child: Text("When the female students of an engineering college mysteriously disappear and are found dead, a young man and his friends decide to look for the culprit.",style: TextStyle(color: Colors.white),)),
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
                height: 180,
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
