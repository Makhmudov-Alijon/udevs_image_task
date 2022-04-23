import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:udevs_task_image/homeScreens/home_screens.dart';
import 'package:udevs_task_image/homeScreens/search_page.dart';
import 'package:udevs_task_image/profil_page.dart';
import 'home_navigatorbar_controller.dart';
import 'messege_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    var hight=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return GetBuilder<DashboardController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: IndexedStack(
              index: controller.tabIndex.value,
              children: [
               HomeScreens(),
                SearchPage(),
                Container(
                  margin: EdgeInsets.only(
                    top: hight*.5
                  ),
                    child: Center(child: Text("Rasim Qo'sish",style: TextStyle(fontSize: 30),))),
                MassegePage(),
                ProfilPage(),


              ],
            ),
          ),
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: controller.tabIndex.value,
            onTap: controller.changeTabIndex,
            unselectedItemColor: Colors.grey,
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: Colors.red[700],

              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("search"),
                selectedColor: Colors.red,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.add),
                title: Text("add"),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.messenger_outline),
                title: Text("messenger"),
                selectedColor: Colors.teal,
              ),
              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text("profil"),
                selectedColor: Colors.teal,
              ),
            ],
          ),

        ),
      );
    });
  }
}
