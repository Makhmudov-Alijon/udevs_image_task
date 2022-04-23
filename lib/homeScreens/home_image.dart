import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'home_navigatorbar_controller.dart';

class HomeImage extends StatefulWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  State<HomeImage> createState() => _HomeImageState();
}

class _HomeImageState extends State<HomeImage> {
  final DashboardController controller = Get.put(DashboardController());
  late final Box box = Hive.box('photogram');
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
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          body: Stack(

            children: [
            Container(
            height: hight * 1,
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(controller.image[controller.d.value]),
            )
            ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: width*.05,
                      top: hight*.02
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/Ellipse.png'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: width*.02,
                        top: hight*.02
                    ),
                    child: Text(box.get('key'),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left: width*.85,
                    top: hight*.03
                ),
                child: IconButton(
                  icon: Icon(Icons.clear,color: Colors.white,),
                  onPressed: (){
                    Get.back();
                  },
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
