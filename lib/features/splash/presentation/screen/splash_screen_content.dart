import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mate/core/common/app_config.dart';
import 'package:meal_mate/core/theme/text_theme_styles.dart';
import 'package:meal_mate/core/ui/widgets/custom_image.dart';

import '../../../../core/constants/app/app_constants.dart';

class SplashScreenContent extends StatefulWidget {
  final Function onAnimationFinished;

  const SplashScreenContent({
    Key? key,
    required this.onAnimationFinished,
  }) : super(key: key);

  @override
  _SplashScreenContentState createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
    ));

    _controller.forward().then((_) {
      Future.delayed(const Duration(seconds: 2), () {
        widget.onAnimationFinished.call();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0.sw,
      height: 1.0.sh,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppConfig().themeMode == ThemeMode.light
                ? AppConstants.SPLASH_BACKGROUND_LIGHT
                : AppConstants.SPLASH_BACKGROUND_DARK,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              child: CustomImage.asset(
                AppConfig().themeMode == ThemeMode.light
                    ? AppConstants.APP_LOGO
                    : AppConstants.APP_LOGO_DARK,
                width: 1.sw,
                height: 1.sw,
              ),
            ),
          ),
          SlideTransition(
            position: _slideAnimation,
            child: Text(
              'طبخة',
              style: TextThemeStyles.displayLarge.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 150.sp,
                color: AppConfig().themeMode == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
