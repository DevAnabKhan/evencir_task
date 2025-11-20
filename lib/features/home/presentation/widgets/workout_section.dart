import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_images.dart';

class WorkoutsSectionWidget extends StatefulWidget {
  WorkoutsSectionWidget({super.key});

  @override
  State<WorkoutsSectionWidget> createState() => _WorkoutsSectionWidgetState();
}

class _WorkoutsSectionWidgetState extends State<WorkoutsSectionWidget> {
  @override
  void initState() {
    super.initState();
    loadTemp();
  }

  bool _isDayTime() {
    final hour = DateTime.now().hour;
    return hour >= 6 && hour < 18;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Workouts', style: Theme.of(context).textTheme.headlineMedium),
            Row(
              children: [
                _isDayTime()
                    ? Icon(
                        Icons.wb_sunny,
                        color: AppColors.textTertiary,
                        size: 24.sp,
                      )
                    : SvgPicture.asset(
                        AppImages.moonSvg,
                        width: 24.w,
                        height: 24.h,
                        color: AppColors.textTertiary,
                      ),
                SizedBox(width: 12.w),
                Text(
                  currentTemp != null ? "${currentTemp!.round()}°" : "--°",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(8.r),
            border: Border(
              left: BorderSide(color: AppColors.textTernary, width: 7.w),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'December 22 - 25m - 30m',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Upper Body',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                AppImages.rightArrowSvg,
                width: 24.w,
                height: 24.h,
              ),
            ],
          ),
        ),
      ],
    );
  }

  WeatherFactory wf = WeatherFactory("304e5f5d649794707aa6cf9b63c65e79");
  double? currentTemp;

  Future<void> loadTemp() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever ||
        permission == LocationPermission.denied) {
      return;
    }

    Position pos = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.medium,
    );

    Weather w = await wf.currentWeatherByLocation(pos.latitude, pos.longitude);

    setState(() {
      currentTemp = w.temperature?.celsius;
    });
  }
}
