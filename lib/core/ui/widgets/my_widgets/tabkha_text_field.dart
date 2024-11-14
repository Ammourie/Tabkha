import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mate/core/theme/text_theme_styles.dart';

class TabkhaTextField extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextStyle? textStyle;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? focusedErrorBorder;
  final Color? fillColor;
  final bool? filled;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final int? minLines;
  final bool? enabled;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final double? borderRadius;
  final double? borderWidth;
  final String? label;
  final TextStyle? labelTextStyle;
  final String? hint;
  final TextStyle? hintTextStyle;
  final Widget? prefix;
  final Widget? suffix;
  final List<TextInputFormatter>? inputFormatters;
  final Color? iconColor;
  final Color? focusedIconColor;

  const TabkhaTextField({
    super.key,
    this.hint,
    this.label,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.prefix,
    this.suffix,
    this.validator,
    this.onChanged,
    this.textStyle,
    this.hintTextStyle,
    this.labelTextStyle,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.disabledBorder,
    this.focusedErrorBorder,
    this.fillColor,
    this.filled,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    this.maxLines = 1,
    this.minLines,
    this.enabled = true,
    this.focusNode,
    this.textInputAction,
    this.onSubmitted,
    this.onTap,
    this.borderRadius = 24,
    this.borderWidth = 1,
    this.inputFormatters,
    this.iconColor,
    this.focusedIconColor,
  });

  @override
  State<TabkhaTextField> createState() => _TabkhaTextFieldState();
}

class _TabkhaTextFieldState extends State<TabkhaTextField> {
  late Color _prefixIconColor = Theme.of(context).hintColor;
  late Color _suffixIconColor = Theme.of(context).hintColor;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
  }

  void _updateIconColors() {
    final theme = Theme.of(context);
    final defaultIconColor = widget.iconColor ?? theme.hintColor;
    final defaultFocusedIconColor =
        widget.focusedIconColor ?? theme.colorScheme.primary;

    setState(() {
      _prefixIconColor = _hasFocus ? defaultFocusedIconColor : defaultIconColor;
      _suffixIconColor = _hasFocus ? defaultFocusedIconColor : defaultIconColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultBorderColor = theme.colorScheme.primary;

    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _hasFocus = hasFocus;
          _updateIconColors();
        });
      },
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        validator: widget.validator,
        onChanged: widget.onChanged,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        enabled: widget.enabled,
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        onFieldSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        inputFormatters: widget.inputFormatters,
        style: widget.textStyle ?? TextThemeStyles.text_16_regular,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          hintStyle: (widget.hintTextStyle ?? TextThemeStyles.text_14_regular)
              .copyWith(color: Colors.grey),
          labelStyle: widget.labelTextStyle ?? TextThemeStyles.text_14_regular,
          prefixIconColor: _prefixIconColor,
          suffixIconColor: _suffixIconColor,
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffix,
          border: widget.border ?? _defaultBorder(),
          enabledBorder: widget.enabledBorder ?? _defaultBorder(),
          focusedBorder: widget.focusedBorder ??
              _defaultBorder(
                color: defaultBorderColor,
                width: widget.borderWidth! * 1.5,
              ),
          errorBorder: widget.errorBorder ?? _defaultBorder(color: Colors.red),
          disabledBorder: widget.disabledBorder ??
              _defaultBorder(color: Colors.grey.shade300),
          focusedErrorBorder: widget.focusedErrorBorder ??
              _defaultBorder(
                  color: Colors.red.shade700, width: widget.borderWidth! * 1.5),
          fillColor: widget.fillColor,
          filled: widget.filled,
          contentPadding: widget.contentPadding,
        ),
      ),
    );
  }

  InputBorder _defaultBorder({Color color = Colors.grey, double? width}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius!.r),
      borderSide: BorderSide(
        color: color,
        width: width ?? widget.borderWidth!,
      ),
    );
  }
}
