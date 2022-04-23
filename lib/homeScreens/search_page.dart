import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_image.dart';
import 'home_navigatorbar_controller.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: hight * .1, left: width * .05),
          child: Text(
            'Izlash',
            style: GoogleFonts.comfortaa(
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: hight * .05, left: width * .05, right: width * .05),
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: hight * .02, left: width * .05),
          child: Text(
            'Barcha natijalar',
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(fontWeight: FontWeight.w400)),
          ),
        ),
        SizedBox(height: hight*.05,),
        StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            for (int i = 0; i < controller.image.length; i++) ...{
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
                  onTap: () {
                    controller.d.value = i;

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeImage()));
                  },
                ),
              ),
            }
          ],
        )
      ],
    );
  }
}
