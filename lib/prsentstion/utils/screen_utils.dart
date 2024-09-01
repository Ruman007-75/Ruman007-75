import 'package:device_preview/device_preview.dart';

enum DeviceType {
  mobile,
  tablet,
  desktop
}

class ScreenUtils{
  static const double mobileMaxsize = 640;
  static const double tabletMaxsize = 1008;
  static const double desktopMinsize = 1008;

  static DeviceType getDeviceType(double width){

    if(width < ScreenUtils.mobileMaxsize){
      return DeviceType.mobile;
    }else if(width >= ScreenUtils.mobileMaxsize && width < ScreenUtils.desktopMinsize){
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}