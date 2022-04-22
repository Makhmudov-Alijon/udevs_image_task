import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udevs_task_image/register_page_second.dart';
import 'package:udevs_task_image/theem.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Themes themes=Get.put(Themes());
  @override
  Widget build(BuildContext context) {
    var hight=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(

      child: Scaffold(

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: hight*.15,
                left: width*.05
              ),
              child: Text('Ro’yxatdan o’tish',style: GoogleFonts.comfortaa(textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w400)),),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: hight*.05,
                  left: width*.05,
                  right: width*.05
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                  )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: hight*.03,
                  left: width*.05,
                  right: width*.05
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(

                    )
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(
                  top: hight*.02,
                  left: width*.05,
                  right: width*.05
                ),
                height: hight*.07,
                width: width*.9,
                child: Center(
                  child: Text('KEYINGISI',style:GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w900,color: Colors.white)),),
                ),
                decoration: BoxDecoration(
                  color: themes.balck,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPapeSecond()));
                  }
            ),
            Container(
              margin: EdgeInsets.only(
                  top: hight*.02,
                  left: width*.05,
                  right: width*.05
              ),
              height: hight*.07,
              width: width*.9,
              child: Center(
                child: Text('Google bilan ro’yxatdan o’tish',style:GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue)),),
              ),
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(

                  )
                ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}
