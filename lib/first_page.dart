import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:udevs_task_image/login_page.dart';
import 'package:udevs_task_image/register_page.dart';
import 'package:udevs_task_image/theem.dart';

class FirtsPage extends StatefulWidget {
  const FirtsPage({Key? key}) : super(key: key);

  @override
  State<FirtsPage> createState() => _FirtsPageState();
}

class _FirtsPageState extends State<FirtsPage> {
  bool status = false;

  Themes themes=Get.put(Themes());
  @override
  Widget build(BuildContext context) {
    var hight=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: EdgeInsets.only(
              top: hight*.2
            ),
            child: FlutterSwitch(
              activeColor: Colors.green,
              width: 125.0,
              height: 55.0,
              valueFontSize: 25.0,
              toggleSize: 45.0,
              value: status,
              borderRadius: 30.0,
              padding: 8.0,
              showOnOff: true,
              onToggle: (val) {
                setState(() {
                  status=val;
                  Get.isDarkMode
                      ? Get.changeTheme(ThemeData.light())
                      : Get.changeTheme(ThemeData.dark());
                  if(Get.isDarkMode==false){
                    themes.balck=themes.red;
                    themes.white=Colors.black;
                  }else{
                    themes.balck=Colors.black;
                    themes.white=Colors.black;
                  }
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: hight*.1,left: width*.15,right: width*.12),
            child: Text('photogram',style: GoogleFonts.comfortaa(textStyle: TextStyle(fontSize: 48)),),

          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: hight*.3,
                    left: width*.02
                ),
                child: CircleAvatar(
                  backgroundColor: themes.balck,
                  maxRadius: 35,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: hight*.3,
                        left: width*.05
                    ),
                    child: Text('Quantic Jamoasi',style: GoogleFonts.comfortaa(textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w700)),),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: hight*.01,
                        left: width*.05
                    ),
                    child: Text('Photogram beta 1.0',style: GoogleFonts.comfortaa(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                      top: hight*.05,
                      left: width*.03
                  ),
                  height: hight*.07,
                  width: width*.45,
                  child: Center(
                    child: Text('Kirish',style:GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w900,fontSize: 13,color: themes.white))),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2
                        )
                      ]
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                      top: hight*.05,
                      left: width*.03
                  ),
                  height: hight*.07,
                  width: width*.45,
                  child: Center(
                    child: Text('Ro’yxatdan o’tish',style:GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w900,fontSize: 13,color: Colors.white))),
                  ),
                  decoration: BoxDecoration(
                      color: themes.balck,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2
                        )
                      ]
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

