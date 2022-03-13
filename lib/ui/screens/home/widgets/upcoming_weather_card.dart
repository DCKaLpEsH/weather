import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/ui/theme/app_colors.dart';

class UpcomingWeatherCard extends StatelessWidget {
  const UpcomingWeatherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      height: 230.h,
      width: 145.w,
      child: Stack(
        children: [
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 28.h,
          //     width: 80.w,
          //     decoration: const BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: AppColors.turqouise,
          //           offset: Offset(0, 4),
          //           blurRadius: 15,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            height: 220.h,
            width: 128.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: AppColors.turqouise,
            ),
            child: Stack(
              children: [
                FractionalTranslation(
                  translation: const Offset(0, 0.86),
                  child: SvgPicture.asset(
                    "assets/svgs/cloud_lower.svg",
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(),
                      Text(
                        "Monday",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/svgs/sunny.svg",
                      ),
                      Text(
                        "40 °",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27.sp,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Pressure
                          Text(
                            "56°",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.50),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          //Humidity
                          Text(
                            "69°",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
