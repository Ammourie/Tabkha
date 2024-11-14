import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mate/core/theme/text_theme_styles.dart';

import '../../../../../generated/l10n.dart';
import '../tabkha_text_field.dart';

class TabkhaSearchDialog extends StatelessWidget {
  const TabkhaSearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      title: Text(
        S.current.search,
        style: TextThemeStyles.text_30_bold,
      ),
      content: SizedBox(
        width: 1.sw,
        child: TabkhaTextField(
          prefix: Icon(EvaIcons.search, size: 50.sp),
          hint: S.current.search,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // TODO: Implement search
            Navigator.pop(context);
          },
          child: const Text('Search'),
        ),
      ],
    );
  }
}
