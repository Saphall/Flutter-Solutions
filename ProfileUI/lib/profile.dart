import 'package:flutter/material.dart';
class Profile extends StatefulWidget {


  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          new Container(
            padding: EdgeInsets.only(top: 22),
            color: Colors.red,
            height: 400,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   IconButton(icon: Icon(Icons.menu), onPressed: (){})
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Profile",style: TextStyle(color: Colors.white,fontSize: 22,fontFamily: 'Rubik'),)
                 ],
               ),
               SizedBox(height: 8,),
               CircleAvatar(
                 backgroundColor: Color(0xffFDCF09),
                 radius: 45,
                 backgroundImage: AssetImage("assets/image/applogo.png"),
               ),
               SizedBox(height: 5,),
               Text("Saphal Shakha",style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'Rubik'),),
               SizedBox(height: 5,),
               Text("App Developer",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Rubik'),),
                 SizedBox(height: 120,),
                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Age: 22",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Rubik'),),
                 Text("user_reg.no",style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Rubik'),)
               ],)
                      
             ],
           ),

          ),
          Expanded(
            child:
           Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 2,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                   padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                   height: 35,
                   width: 160,
                   color: Colors.pink[300],
                   child: Text("Contact Me",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Rubik')),
                 ),
                 ]),
                 SizedBox(height: 15,),
                 Row(children: [
                   SizedBox(width: 25,),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/google.png",),
                    backgroundColor: Colors.white,
                    radius: 18,
                  ),
                  SizedBox(width: 5,),
                  Text("saphalshakha@gmail.com",style: TextStyle(fontSize: 17,fontFamily: 'Rubik'),),
                 ],),
                 SizedBox(height: 10,),
                  Row(children: [
                   SizedBox(width: 25,),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/phone.png",),
                    backgroundColor: Colors.white,
                    radius: 18,
                  ),
                  SizedBox(width: 5,),
                  Text("+977-9811111111 ",style: TextStyle(fontSize: 17,fontFamily: 'Rubik'),),
                 ],),
                 SizedBox(height: 15,),
                   Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                   padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                   height: 35,
                   width: 160,
                   color: Colors.pink[300],
                   child: Text("Follow Me",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Rubik')),
                 ),
                 ]), 
                 SizedBox(height: 15,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/linkedin.png",),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                   CircleAvatar(
                    backgroundImage: AssetImage("assets/image/twitter.png",),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                   CircleAvatar(
                    backgroundImage: AssetImage("assets/image/insta.png",),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                
                 ],), 

                 SizedBox(height: 25,),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/fb.png",),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                   CircleAvatar(
                    backgroundImage: AssetImage("assets/image/tiktok.png",),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                   CircleAvatar(
                    backgroundImage: AssetImage("assets/image/github.png",),
                    backgroundColor: Colors.white,
                    radius: 20,
                  ),
                
                 ],),


            ],),
          ))
        ],
      ),
    );
  }
}
