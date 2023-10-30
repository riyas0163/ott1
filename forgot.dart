import 'package:flutter/material.dart';
import 'package:untitled4/OTP.dart';
import 'package:untitled4/form%20valid.dart';

final _formkey =GlobalKey<FormState>();

class forgot extends StatefulWidget {
  const forgot({super.key});


  @override
  State<forgot> createState() => _forgotState();
}
TextEditingController ctrl = TextEditingController();
String num = "";

class _forgotState extends State<forgot> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,

      appBar: AppBar(
        leading: TextButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>valid()));
        },child: Icon(Icons.arrow_back)),
      ),
      body: Form(
        key: _formkey,
        child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/fp1.jpg"),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(500),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Text("Enter mobile number to login",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 250,
                color: Colors.white,
                child: TextFormField(
                  controller: ctrl,
                  decoration: InputDecoration(
                    hintText: "Enter 10 digit number",
                    border: OutlineInputBorder(),
                  ),
                  validator: (x){
                    if(x == null || x.isEmpty){
                      return "Invalid number";
                    }
                    else if(x.length<10){
                      return"Contain 8 charcter";
                    }
                    return null;
                }
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 40,
                  width: 130,
                  child: ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate())
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>OTP()));

                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.white), child: Text("OTP",style: TextStyle(color: Colors.black),)))
            ],
          ),
      ),
      );

  }
}
