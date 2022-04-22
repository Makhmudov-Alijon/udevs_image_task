import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:udevs_task_image/theem.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  Themes themes = Get.put(Themes());

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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: hight * .15,
                left: width * .32
            ),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/Ellipse.png'),
            ),
          ),
          Obx(() {
            return Container(
              margin: EdgeInsets.only(
                  top: hight * .02,
                  left: width * .45
              ),
              child: Text(themes.username.toString()),
            );
          }),
          Container(
            margin: EdgeInsets.only(
                top: hight * .01,
                left: width * .45
            ),
            child: Text("@${themes.username.toString()}"),
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
      ),
    );
  }
}
