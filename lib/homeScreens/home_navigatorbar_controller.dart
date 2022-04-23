import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';



class DashboardController extends GetxController {
  var tabIndex = 2.obs;

  RxList<dynamic> image=RxList(
    [
      "https://c4.wallpaperflare.com/wallpaper/713/13/242/movies-marvel-cinematic-universe-marvel-comics-avengers-endgame-captain-america-hd-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/84/141/133/marvel-cinematic-universe-loki-tom-hiddleston-thor-ragnarok-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/830/569/186/loki-in-thor-2-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/869/26/517/the-avengers-avengers-endgame-chris-hemsworth-thor-hd-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/465/438/378/scarlett-johansson-infinity-vision-hulk-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/591/844/1024/spider-man-spider-video-games-superhero-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/1000/316/848/spider-man-2018-game-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/707/255/764/city-action-fantasy-heroes-wallpaper-preview.jpg",
      "https://c4.wallpaperflare.com/wallpaper/385/371/809/spider-man-hd-black-spiderman-wallpaper-preview.jpg"
    ]
  );
  var d=0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }


}
