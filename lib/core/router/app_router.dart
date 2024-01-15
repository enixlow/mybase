import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_base/core/const/assets.dart';
import 'package:my_base/ui/screen/splashscreen/splashscreen.dart';
import 'package:my_base/ui/screen/auth/login_screen.dart';
import 'package:my_base/ui/screen/dashboard/dashboard_screen.dart';
import 'package:my_base/ui/screen/merchant/merchant_screen.dart';
import 'package:my_base/ui/screen/profile/profile_screen.dart';
import 'package:my_base/ui/screen/setting/setting_screen.dart';
import 'package:my_base/ui/screen/phone/phone_screen.dart';
import 'package:my_base/ui/screen/not_found/not_found_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: Screen.kSplashScreen,
          initial: true,
          keepHistory: false,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: Screen.kLoginScreen,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          path: Screen.kDashboard,
          children: [
            AutoRoute(
              page: MerchantRoute.page,
              path: Screen.kMerchant,
              initial: true,
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: Screen.kProfile,
            ),
            AutoRoute(
              page: SettingRoute.page,
              path: Screen.kSetting,
            ),
          ],
        ),
        AutoRoute(
          page: NotFoundRoute.page,
          path: Screen.kNotFoundScreen,
        ),
        AutoRoute(
          page: PhoneRoute.page,
          path: Screen.kPhone,
        ),
        RedirectRoute(
          path: '*',
          redirectTo: Screen.kNotFoundScreen,
        ) //wildcard
      ];
}
