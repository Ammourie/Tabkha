import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/app/app_constants.dart';
import '../../../../../core/ui/widgets/my_widgets/dialogs/tabkha_custom_dialog.dart';
import '../../../../../core/ui/widgets/my_widgets/dialogs/tabkha_search_dialog.dart';
import '../../../../../core/ui/widgets/my_widgets/tabkha_icon_button.dart';
import '../../state_m/provider/home_screen_notifier.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  late HomeScreenNotifier provider;
  @override
  void initState() {
    super.initState();
    provider = context.read<HomeScreenNotifier>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          padding: EdgeInsets.all(AppConstants.screenPadding),
          child: Column(
            children: [
              _appBar(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                child: const DrawerHeader(
                  child: Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Text(AppConstants.TITLE_APP_NAME),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () => provider.onLogoutTap(context),
                trailing: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _appBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppConstants.screenPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(
            builder: (BuildContext context) {
              return TabkhaIconButton(
                iconData: EvaIcons.menu2,
                width: 100.sp,
                height: 100.sp,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          TabkhaIconButton(
            iconData: EvaIcons.search,
            width: 100.sp,
            height: 100.sp,
            onPressed: () {
              showTabkhaCustomDialog(
                child: const TabkhaSearchDialog(),
              );
            },
          ),
        ],
      ),
    );
  }
}
