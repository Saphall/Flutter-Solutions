import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
// ignore: must_be_immutable
class PDFPage extends StatefulWidget {
  String coursename;
  PDFPage({this.coursename});

  @override
  _PDFPageState createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
   _pdfPage(coursename){
     if(coursename=="C Programming"){
       return PDF.asset("assets/pdf/C.pdf",);
     }
     else if(coursename=="C++"){
      return PDF.asset("assets/pdf/c++.pdf");
     }
     else if(coursename=="Programming Technology"){
      return PDF.asset("assets/pdf/pt.pdf");
     }
     else if(coursename=="Basic Linux Guide"){
      return PDF.asset("assets/pdf/kali.pdf");
     }
     else if(coursename=="Computer Network"){
      return PDF.asset("assets/pdf/CN.pdf");
     }
   }
  @override 
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text(widget.coursename,style: TextStyle(fontFamily: 'Newsreader'),),), 
      body: _pdfPage(widget.coursename),
    );
  }
}