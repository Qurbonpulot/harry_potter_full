import 'package:flutter/material.dart';

abstract class CustomImages {
  /// #icons
  static Image leading = Image.asset("assets/icons/ic_progress.png");
  static Image account = Image.asset("assets/icons/ic_user.png");
  static Image arrow = Image.asset("assets/icons/ic_full_arrow.png");
  static Image icon = Image.asset("assets/icons/ic_icon.png", width: 25);
  static Image dji = Image.asset("assets/icons/ic_dji.png");
  static Image back = Image.asset("assets/icons/ic_back.png");
  static Image i3d = Image.asset("assets/icons/ic_3d.png");
  static Image lighting = Image.asset("assets/icons/ic_lighting.png");
  static Image video = Image.asset("assets/icons/ic_video.png");
  static Image clock = Image.asset("assets/icons/ic_time.png");
  static Image outlineLighting = Image.asset("assets/icons/ic_lighting_purple.png");
  static Image nfc = Image.asset("assets/icons/ic_nfc.png");
  static Image arrowFull = Image.asset("assets/icons/ic_arrow.png");

  /// #images
  static Image firstDrone =
      Image.asset("assets/images/img_fly_drone.png", width: 150);
  static Image secondDrone =
      Image.asset("assets/images/img_fly_right.png", width: 150);
  static Image redDrone = Image.asset("assets/images/img_red_drone.png");
  static Image whiteDrone = Image.asset("assets/images/img_white_drone.png");
  static Image whiteDrone1 =
      Image(image: AssetImage("assets/images/img_white_drone.png"), width: 100);
}
