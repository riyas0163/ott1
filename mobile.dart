
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class mobile extends StatelessWidget {
  const mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(onPressed:(){
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>myntrah()));
        },child: Icon(Icons.arrow_back)),
        title:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 300,
            color: Colors.white,
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "search .in",
                prefixIcon:IconButton(onPressed: (){},icon: Icon(Icons.search),),
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.qr_code),),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                    options:CarouselOptions(
                      height: 250,
                      aspectRatio: 16/9,
                      viewportFraction: 4,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 1300),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 1,
                      scrollDirection: Axis.horizontal,
                    ),
                     itemCount: 5,
                  itemBuilder: (
                      (BuildContext context, int itemIndex, int pageViewIndex) {

                        return Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/am1.jpg"),
                            )
                          ),
                        );
                      }
                  ),
                ),
                Positioned(
                  bottom: 200,
                  left: 280,
                  child: Icon(Icons.share_outlined),
                ),
                Positioned(
                  bottom: 10,
                  right: 280,
                  child: Icon(Icons.favorite_outline_rounded)
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(text:TextSpan(text: "Visit the samsung store",style: TextStyle(fontSize: 18,color: Colors.purpleAccent),)),
                    ),
                   ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Samsung Galaxy m14 5G (berry blue,4GB ,128GB storage |50MP Triple Cam |6000 mAh battery |5nm octo -core processor |andriod 13|without charger",style: TextStyle(fontSize: 18),),),
                ),
              ],
            ),
            Divider(thickness: 4,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 400,
                   child:RichText(
                     text: TextSpan(
                       children: [
                         TextSpan(
                         text: "colours :",
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 22,
                           ),
                         ),
                         TextSpan(
                           text: " Berry Blue",
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           )
                         )
                       ]
                     ),
                   ),
                  ),
                )
              ],
            ),
            Divider(thickness: 5,),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 400,
                  child:RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "size",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                          TextSpan(
                              text: " 4GB + 128GB",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                        ]
                    ),
                  ),
                )
              ],
            ),
            Divider(thickness: 5,),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 130,
                      child: RichText(
                        text: TextSpan(
                          text: "-19 %,",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                          ),
                        ),
                      ),

                    ),
                    Container(
                      height: 40,
                      width: 130,
                      child: RichText(
                        text: TextSpan(
                          text: "₹14,490",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                  Row(
                    children: [
                      Text("M.R.P .:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text("₹17,990,",style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 20),)
                    ],
                  ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 400,
                  child:RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "EMI",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: "  from 696.No cost EMI available.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                          ),
                        ]
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: RichText(text:TextSpan(text: "EMI options",style: TextStyle(fontSize: 24,color: Colors.blueAccent),),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: RichText(text: TextSpan(text: "Inclusive of all taxes",style: TextStyle(fontSize: 20,color: Colors.black))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 400,
                     decoration: BoxDecoration(
                       border: Border.all()
                     ),
                     child: ListTile(leading: Icon(Icons.currency_exchange_outlined),title: Text("Exchange Your old phone",style: TextStyle(fontSize: 20),),subtitle: Text("save upto 13,750",style: TextStyle(fontSize: 18),),trailing: Icon(Icons.arrow_drop_down_sharp),),
                    ),
                    Container(
                      height: 80,
                      width: 400,
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child: ListTile(leading: Icon(Icons.add_box),title: Text("Add Accessories",style: TextStyle(fontSize: 20),),subtitle: Text("save extra when bought together",style: TextStyle(fontSize: 18),),trailing: Icon(Icons.arrow_drop_down_sharp),),
                    ),
                    Container(
                      height: 80,
                      width: 400,
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                      child: ListTile(leading: Icon(Icons.wifi_protected_setup_sharp),title: Text("Protect your mobile",style: TextStyle(fontSize: 20),),subtitle: Text("Covers broken screen,",style: TextStyle(fontSize: 18),),trailing: Icon(Icons.arrow_drop_down_sharp),),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Total: ₹14,490",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "FREE delivery",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "Friday,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ), RichText(
                  text: TextSpan(
                    text: "18 Augest.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "Details",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      child:  RichText(
                        text: TextSpan(
                          text: "Or fastest delivery ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                      Container(
                      child:  RichText(
                        text: TextSpan(
                          text: "tomorrow,17 Augest.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child:   RichText(
                        text: TextSpan(
                          text: "Order within 4 hrs 21 mins.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child:   RichText(
                        text: TextSpan(
                          text: "Details",
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.location_on_sharp),
                RichText(text: TextSpan(text: "Deliver to Riyas - Tiruppur 641601",style: TextStyle(fontSize: 18,color: Colors.cyan,),))
              ],
            ),
            SizedBox(height: 20,),
            Container(
              child: RichText(
                text: TextSpan(
                  text: "In stock",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                  )
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 40,
                  child: Text("QTY : 1",style: TextStyle(fontSize: 20),),
                ),
                TextButton(onPressed: (){
                }, child: Icon(Icons.arrow_drop_down)),
              ],
            ),

            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Add to cart",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Buy now",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.lock_outline_rounded),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(text: "secure transaction",style: TextStyle(fontSize: 20,color: Colors.cyan))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
