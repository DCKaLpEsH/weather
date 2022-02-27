import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final screenSize = Size(
      width > 500 ? 1280 : 414,
      height < 801 ? 800 : 896,
    );
    ScreenUtil.init(
      BoxConstraints(
        maxHeight: height,
        maxWidth: width,
      ),
      designSize: screenSize,
      context: context,
    );
    return Scaffold();
  }
}
