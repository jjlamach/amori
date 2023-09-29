// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:amori/app/screens/editemotion/widgets/select_new_emotion_view.dart'
    as _i9;
import 'package:amori/app/screens/editemotion/widgets/selected_emotion_page.dart'
    as _i10;
import 'package:amori/app/screens/emotionselection/emotion_selection_page.dart'
    as _i2;
import 'package:amori/app/screens/favorites/favorites_page.dart' as _i3;
import 'package:amori/app/screens/feelings/feelings_page.dart' as _i4;
import 'package:amori/app/screens/forgottenpassword/forgotten_password_page.dart'
    as _i5;
import 'package:amori/app/screens/home/home_page.dart' as _i6;
import 'package:amori/app/screens/navigation/bottom_navigation_page.dart'
    as _i1;
import 'package:amori/app/screens/onboarding/onboarding_page.dart' as _i7;
import 'package:amori/app/screens/register/register_page.dart' as _i8;
import 'package:amori/app/screens/signin/sign_in_page.dart' as _i11;
import 'package:amori/app/screens/splashscreen/splash_screen.dart' as _i12;
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

abstract class $AmoriAppRouter extends _i13.RootStackRouter {
  $AmoriAppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    BottomNavigationBarRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BottomNavigationBarPage(),
      );
    },
    EmotionSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<EmotionSelectionRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.EmotionSelectionPage(
          emotion: args.emotion,
          key: args.key,
        ),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoritesPage(),
      );
    },
    FeelingsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FeelingsPage(),
      );
    },
    ForgottenPasswordRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgottenPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnBoardingPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RegisterPage(),
      );
    },
    SelectNewEmotionView.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SelectNewEmotionView(),
      );
    },
    SelectedEmotionRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SelectedEmotionPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SignInPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BottomNavigationBarPage]
class BottomNavigationBarRoute extends _i13.PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<_i13.PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EmotionSelectionPage]
class EmotionSelectionRoute
    extends _i13.PageRouteInfo<EmotionSelectionRouteArgs> {
  EmotionSelectionRoute({
    required String emotion,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          EmotionSelectionRoute.name,
          args: EmotionSelectionRouteArgs(
            emotion: emotion,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EmotionSelectionRoute';

  static const _i13.PageInfo<EmotionSelectionRouteArgs> page =
      _i13.PageInfo<EmotionSelectionRouteArgs>(name);
}

class EmotionSelectionRouteArgs {
  const EmotionSelectionRouteArgs({
    required this.emotion,
    this.key,
  });

  final String emotion;

  final _i14.Key? key;

  @override
  String toString() {
    return 'EmotionSelectionRouteArgs{emotion: $emotion, key: $key}';
  }
}

/// generated route for
/// [_i3.FavoritesPage]
class FavoritesRoute extends _i13.PageRouteInfo<void> {
  const FavoritesRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FeelingsPage]
class FeelingsRoute extends _i13.PageRouteInfo<void> {
  const FeelingsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FeelingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeelingsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForgottenPasswordPage]
class ForgottenPasswordRoute extends _i13.PageRouteInfo<void> {
  const ForgottenPasswordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ForgottenPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgottenPasswordRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnBoardingPage]
class OnBoardingRoute extends _i13.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i13.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i13.PageRouteInfo<void> {
  const RegisterRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SelectNewEmotionView]
class SelectNewEmotionView extends _i13.PageRouteInfo<void> {
  const SelectNewEmotionView({List<_i13.PageRouteInfo>? children})
      : super(
          SelectNewEmotionView.name,
          initialChildren: children,
        );

  static const String name = 'SelectNewEmotionView';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SelectedEmotionPage]
class SelectedEmotionRoute extends _i13.PageRouteInfo<void> {
  const SelectedEmotionRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SelectedEmotionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectedEmotionRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SignInPage]
class SignInRoute extends _i13.PageRouteInfo<void> {
  const SignInRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
