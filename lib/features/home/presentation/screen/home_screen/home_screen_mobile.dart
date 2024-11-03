import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../state_m/provider/home_screen_notifier.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Theme(
        data: Theme.of(context),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
          drawer: _buildDrawer(context),
          body: const Center(
            child: Text('Home Screen'),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                child: DrawerHeader(
                  child: Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: _themeSwitcher(context),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () =>
                    provider(context, listen: false).onLogoutTap(context),
                trailing: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _themeSwitcher(BuildContext context) {
    return ThemeSwitcher(
      builder: (context) {
        return IconButton(
          icon: Icon(
            provider(context).getThemeIcon(context),
          ),
          onPressed: () {
            provider(context, listen: false).onThemeSwitcherTap(context);
          },
        );
      },
    );
  }

  HomeScreenNotifier provider(BuildContext context, {bool listen = true}) =>
      Provider.of<HomeScreenNotifier>(context, listen: listen);
}
