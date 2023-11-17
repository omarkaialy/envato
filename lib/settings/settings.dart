import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SETTINGS extends StatelessWidget {
  const SETTINGS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar( shape: BeveledRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      elevation: 4,shadowColor: Colors.grey.shade50,toolbarHeight: 80,
       backgroundColor: Colors.white,title: Text('Settings',
       style: TextStyle(color: Color(0xff748a9d),fontSize: 30,fontWeight: FontWeight.normal),),
       centerTitle: true),
      body:Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          children: [
            SizedBox(height: 40),
          Container(height: 60,padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xfff0f4f8),borderRadius: BorderRadius.circular(8)),margin: EdgeInsets.only(bottom: 5),
            child: Row(children: [
              
              Image.asset('assets/images/path.png',height:20,color: Color(0xff7bed8d), ),
              SizedBox(width:18),
              Text('Your Account',style: TextStyle(color: Color(0xff748a9d),fontSize: 20),),
                   SizedBox(width: 80),
              Icon(Icons.arrow_forward_ios,color: Color(0xff748a9d),size: 15,) 
         
            ],
           )),
          Container(height: 60,padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xfff0f4f8),borderRadius: BorderRadius.circular(8)),margin: EdgeInsets.only(bottom: 5),
   child: Row(children: [
              
              Image.asset('assets/images/path.png',height:20,color: Color(0xff7bed8d), ),
              SizedBox(width:18),
              Text('Your Orders',style: TextStyle(color: Color(0xff748a9d),fontSize: 20),),
               SizedBox(width: 95),
               Icon(Icons.arrow_forward_ios,color: Color(0xff748a9d),size: 15,)
            ],
           )
            ),
          Container(height: 60,padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xfff0f4f8),borderRadius: BorderRadius.circular(8)),margin: EdgeInsets.only(bottom: 5),
               child: Row(children: [
              
              Image.asset('assets/images/path.png',height:20,color: Color(0xff7bed8d), ),
              SizedBox(width:18),
              Text('Live Chat',style: TextStyle(color: Color(0xff748a9d),fontSize: 20),),
             SizedBox(width:117),
               Icon(Icons.arrow_forward_ios,color: Color(0xff748a9d),size: 15,)
            ],
           )
            ),
          Container(height: 60,padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xfff0f4f8),borderRadius: BorderRadius.circular(8)),margin: EdgeInsets.only(bottom: 5),
               child: Row(children: [
              Image.asset('assets/images/path.png',height:20,color: Color(0xff7bed8d), ),
               SizedBox(width:18),
              Text('Dark Mode',style: TextStyle(color: Color(0xff748a9d),fontSize: 20),),
              SizedBox(width:102),
               Icon(Icons.arrow_forward_ios,color: Color(0xff748a9d),size: 15,)
            ],
           )
            ),
          SizedBox(height: 100),
          Container(height: 60,padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xfff0f4f8),borderRadius: BorderRadius.circular(8)),
               child: Row(children: [
               
              Image.asset('assets/images/path.png',height:20,color: Color(0xff7bed8d), ),
              SizedBox(width:18),
              Text('Sign Out',style: TextStyle(color: Color(0xff748a9d),fontSize: 20),)
            ],
           )
            ),
        ],
      
        ),
      ),
    );
  }
}