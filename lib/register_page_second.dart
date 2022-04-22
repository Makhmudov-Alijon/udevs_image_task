import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udevs_task_image/profil_page.dart';
import 'package:udevs_task_image/theem.dart';

class RegisterPapeSecond extends StatefulWidget {
  const RegisterPapeSecond({Key? key}) : super(key: key);

  @override
  State<RegisterPapeSecond> createState() => _RegisterPapeSecondState();
}

class _RegisterPapeSecondState extends State<RegisterPapeSecond> {
  Themes themes=Get.put(Themes());
  final controller=TextEditingController();
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
              controller: controller,
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
              themes.username.value=controller.text;
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilPage()));
              controller.clear();
            },
          ),
          Container(
            margin: EdgeInsets.only(
              top: hight*.05,
              left: width*.05
            ),
            child: Text("Ro’yxat o’tish tugmasini bosish orqali siz photogram \nijtimoiy tarog’ining Foydalanish shartlari va Xavfsizlik qoidalariga rozilik bildirgan bo’lasiz.",style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w700)),),
          )

        ],
      ),
    );
  }
}
