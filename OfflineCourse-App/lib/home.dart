import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:offlinecourse/pdfviewer.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
var courstitle = ["C Programming", "C++","Programming Technology", "Basic Linux Guide", "Computer Network"];
var image = [
  "assets/C.png",
  "assets/C++.png",
  "assets/pt.png",
  "assets/linux.png",
  "assets/CN.jpg",
];
  
  Future<bool> _onBackPressed() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0)),
              backgroundColor: Colors.white,
              title: Text("Do you really want to exit?"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text(
                      "No",
                      style: TextStyle(fontFamily: 'Rubik', fontSize: 17.0),
                    )),
                TextButton(
                    onPressed: () => SystemNavigator.pop(),
                    child: Text(
                      "Yes",
                      style: TextStyle(fontFamily: 'Rubik', fontSize: 17.0),
                    ))
              ],
            ));
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(title: Text('Offline Course',style: TextStyle(fontFamily: 'Newsreader',fontSize: 22),),centerTitle: true,),
      body: ListView.builder(itemCount: courstitle.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
          child: Card(
          margin: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>PDFPage(coursename:courstitle[index])));
              },
              title: Text(courstitle[index],style: TextStyle(fontFamily: 'SFProText'),),
              leading: CircleAvatar(
                backgroundImage:AssetImage(image[index]) ,),
            ),
          ),
        );
      },),

        
      ),
    );
  }
}
