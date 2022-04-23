import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:udevs_task_image/theem.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  Themes themes = Get.put(Themes());
  late final Box box = Hive.box('photogram');
  bool status = false;
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: hight*.01,
              left: width * .7
          ),
          child: FlutterSwitch(
            activeColor: Colors.green,
            width: 100.0,
            height: 40,
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
          margin: EdgeInsets.only(
            top: hight*.08,
              left: width * .32
          ),
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('images/Ellipse.png'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: hight * .02,
              left: width * .45
          ),
          child: Text(box.get('key')),
        ),
        Container(
          margin: EdgeInsets.only(
              top: hight * .01,
              left: width * .45
          ),
          child: Text("@${box.get('key')}"),
        ),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(
                top: hight * .05,
                left: width * .05
            ),
            height: hight * .07,
            width: width * .9,
            child: Center(
              child: Text('Xabar', style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontWeight: FontWeight.w900,
                      fontSize: 13,
                      color: themes.white))),
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
          onTap: () {

          },
        ),
      ],
    );
  }
}
