// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MerchantRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MerchantScreen(),
      );
    },
    NotFoundRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotFoundScreen(),
      );
    },
    PhoneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhoneScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(
          key: args.key,
          name: args.name,
          age: args.age,
        ),
      );
    },
    SettingRoute.name: (routeData) {
      final args = routeData.argsAs<SettingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingScreen(
          key: args.key,
          payload: args.payload,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MerchantScreen]
class MerchantRoute extends PageRouteInfo<void> {
  const MerchantRoute({List<PageRouteInfo>? children})
      : super(
          MerchantRoute.name,
          initialChildren: children,
        );

  static const String name = 'MerchantRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotFoundScreen]
class NotFoundRoute extends PageRouteInfo<void> {
  const NotFoundRoute({List<PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhoneScreen]
class PhoneRoute extends PageRouteInfo<void> {
  const PhoneRoute({List<PageRouteInfo>? children})
      : super(
          PhoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    required String name,
    required int age,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            name: name,
            age: age,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.name,
    required this.age,
  });

  final Key? key;

  final String name;

  final int age;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, name: $name, age: $age}';
  }
}

/// generated route for
/// [SettingScreen]
class SettingRoute extends PageRouteInfo<SettingRouteArgs> {
  SettingRoute({
    Key? key,
    required SettingScreenPayload payload,
    List<PageRouteInfo>? children,
  }) : super(
          SettingRoute.name,
          args: SettingRouteArgs(
            key: key,
            payload: payload,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<SettingRouteArgs> page =
      PageInfo<SettingRouteArgs>(name);
}

class SettingRouteArgs {
  const SettingRouteArgs({
    this.key,
    required this.payload,
  });

  final Key? key;

  final SettingScreenPayload payload;

  @override
  String toString() {
    return 'SettingRouteArgs{key: $key, payload: $payload}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
