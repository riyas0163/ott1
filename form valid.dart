import 'package:flutter/material.dart';
import 'package:untitled4/forgot.dart';

import 'mynta.dart';
final _formkey=GlobalKey<FormState>();

String mail= "";
String pass= "";

class valid extends StatefulWidget {
  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
//  const valid({super.key});
 TextEditingController txtName = TextEditingController();
 TextEditingController txtpwd = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 700,
            width: 350,
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/rl.jpg"),fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 60,
                    width: 280,
                    child: TextFormField(
                      controller: txtName,
                      decoration: InputDecoration(
                       prefixIcon: Icon(Icons.mail),
                        hintText: "Email",
                        border: OutlineInputBorder(),
                      ),
                     validator: (x){
                        if(x == null || x.isEmpty){
                          return"Enter valid email";
                        }
                        else if(!x.contains("@")|| (!x.contains(".com"))){
                          return"Enter password";
                        }
                        return null;
                     }
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 60,
                    width: 280,
                    child: TextFormField(
                      controller: txtpwd,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          hintText: "Password",
                          border: OutlineInputBorder(),
                      ),
                      validator: (s){
                        if(s==null||s.isEmpty){
                          return"Enter valid id";
                        }
                        else if(s.length<8){
                          return"Contain 8 charcter";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 40,
                    width: 100,
                      child: ElevatedButton(onPressed: (){
                       if(_formkey.currentState!.validate()){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> myntrah()) );
                        }
                      },style: ElevatedButton.styleFrom(backgroundColor:Colors.blueAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))), child: Text("login",style: TextStyle(color: Colors.black,fontSize: 20 ),)),),
                  SizedBox(height: 20,),
                 TextButton(onPressed: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>forgot()) );
                 },
                    child: Text("FORGOT PASSWORD ?",style: TextStyle(color: Colors.blueAccent,),)),
                  SizedBox(height: 30,),
                  Text("or",style: TextStyle(fontSize: 20),),
                 
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.facebook,size: 70,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/ins.jpg"),fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/twit.jpg"),fit: BoxFit.fill,
                                  ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/goo.jpg"),fit: BoxFit.fill,
                                  ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
