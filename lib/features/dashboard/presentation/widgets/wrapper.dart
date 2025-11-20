import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task/core/constants/app_images.dart';
import 'package:test_task/core/constants/app_routes.dart';
import '../../../../../../../core/constants/app_colors.dart';

class BottomNavWidget extends StatelessWidget {
  final int currentIndex;

  const BottomNavWidget({super.key, required this.currentIndex});

  void _navigateToScreen(BuildContext context, int index) {
    if (index == currentIndex) {
      return;
    }

    String? screen;
    switch (index) {
      case 0:
        screen = AppRoutes.homeView;
        break;
      case 1:
        screen = AppRoutes.planView;
        break;
      case 2:
        screen = AppRoutes.moodView;
        break;
      case 3:
        break;
      default:
        return;
    }

    if (screen != null) {
      context.go(screen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(context, AppImages.nutritionSvg, 'Nutrition', 0),
              _buildNavItem(context, AppImages.calendarSvg, 'Plan', 1),
              _buildNavItem(context, AppImages.moodSvg, 'Mood', 2),
              _buildNavItem(context, AppImages.profileSvg, 'Profile', 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    String icon,
    String label,
    int index,
  ) {
    final isActive = index == currentIndex;

    return TextButton(
      onPressed: () {
        _navigateToScreen(context, index);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              width: 24.w,
              height: 24.h,
              color: isActive
                  ? AppColors.textSecondary
                  : AppColors.textSecondary.withOpacity(0.2),
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 14,
                color: isActive
                    ? AppColors.textSecondary
                    : AppColors.textSecondary.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
