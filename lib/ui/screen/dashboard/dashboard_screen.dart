import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_base/core/router/app_router.dart';
import 'package:my_base/ui/screen/setting/setting_screen.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const MerchantRoute(),
        ProfileRoute(name: "eric", age: 28),
        SettingRoute(payload: SettingScreenPayload("hallo")),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Merchant',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.music_note),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
