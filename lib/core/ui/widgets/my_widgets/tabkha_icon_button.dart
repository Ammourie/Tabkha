import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mate/core/ui/widgets/custom_image.dart';

class TabkhaIconButton extends StatefulWidget {
  const TabkhaIconButton({
    super.key,
    this.icon,
    required this.onPressed,
    this.width,
    this.height,
    this.iconData,
    this.rotateIcon = false,
    this.borderRadius,
    this.borderColor = Colors.grey,
    this.borderWidth = 1.0,
    this.backgroundColor,
    this.iconColor = Colors.grey,
    this.iconSize,
    this.padding,
    this.shape = BoxShape.circle,
    this.enableAnimations = false,
  }) : assert(
          (icon != null && iconData == null) ||
              (icon == null && iconData != null),
          'Either icon or iconData must be provided, but not both',
        );

  final String? icon;
  final IconData? iconData;
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final double? borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color? backgroundColor;
  final Color iconColor;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final BoxShape shape;
  final bool rotateIcon;
  final bool enableAnimations;

  @override
  State<TabkhaIconButton> createState() => _TabkhaIconButtonState();
}

class _TabkhaIconButtonState extends State<TabkhaIconButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _setupAnimations();
  }

  void _setupAnimations() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100), // Even faster animation
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.7).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  BorderRadius? _getBorderRadius() {
    if (widget.shape == BoxShape.circle) return null;
    return BorderRadius.circular(widget.borderRadius ?? 10.sp);
  }

  double _getIconSize() {
    return widget.iconSize ??
        (widget.width != null ? widget.width! / 2 : 20.sp);
  }

  Widget _buildIcon() {
    final iconSize = _getIconSize();

    return Transform.rotate(
      angle:
          widget.rotateIcon ? 3.14159 : 0, // 180 degrees in radians if rotated
      child: widget.icon != null
          ? CustomImage.asset(
              widget.icon!,
              width: iconSize,
              height: iconSize,
              color: widget.iconColor,
            )
          : Icon(
              widget.iconData,
              size: iconSize,
              color: widget.iconColor,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget child = Container(
      width: widget.width ?? 20.sp,
      height: widget.height ?? 20.sp,
      padding: widget.padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: _getBorderRadius(),
        shape: widget.shape,
        color: widget.backgroundColor,
        border: Border.all(
          color: widget.borderColor,
          width: widget.borderWidth,
        ),
      ),
      child: _buildIcon(),
    );

    if (widget.enableAnimations) {
      child = ScaleTransition(
        scale: _scaleAnimation,
        child: child,
      );
    }

    return InkWell(
      borderRadius: BorderRadius.circular(9999),
      onTap: () {
        if (widget.enableAnimations) {
          _controller.forward().then((_) => _controller.reverse());
        }
        widget.onPressed();
      },
      child: child,
    );
  }
}
