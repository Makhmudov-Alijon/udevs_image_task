import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udevs_task_image/homeScreens/home_image.dart';
import 'home_navigatorbar_controller.dart';
class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    var hight=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: hight*.03,left: width*.05,bottom: hight*.07),
            child: Text('photogram',style: GoogleFonts.comfortaa(textStyle: TextStyle(fontSize: 36)),),

          ),
          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children:  [
              for(int i=0;i<controller.image.length;i++ )...{
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,

                      child: GestureDetector(
                        child: Container(
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(controller.image[i]),
                          ),
                        ),
                        onTap: (){
                          controller.d.value=i;

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeImage()));
                        },
                      ),


                ),
              }
            ],
          ),
        ],
      ),
    );
  }
}
