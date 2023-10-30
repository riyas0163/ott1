import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:untitled4/forgot.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

OtpFieldController wrd = OtpFieldController();
String num = "";

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(leading: TextButton(onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>forgot()) );
      },child: Icon(Icons.arrow_back),),),
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/f2.jpg"))
              ),
            ),
          ),
          SizedBox(height: 80,),
          Container(
      height: 70,
      width: 350,
      child: OTPTextField(
      length: 6,
      controller: wrd,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 50,
      style: TextStyle(
      fontSize: 15,
      ),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.box,onCompleted: (pin) {
       print("Completed: " + pin);
      },

      ),
      ),
          SizedBox(height: 20,),
          Container(
              height: 50,
              width: 150,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.white,), child: Text("Cofirm",style: TextStyle(fontSize: 20,color: Colors.black),)))
        ],
      ),
    );
  }
}
