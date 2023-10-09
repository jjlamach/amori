// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:amori/app/screens/editemotion/widgets/select_new_emotion_view.dart'
    as _i9;
import 'package:amori/app/screens/emotionselection/emotion_form_page.dart'
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
import 'package:amori/app/screens/signin/sign_in_page.dart' as _i10;
import 'package:amori/app/screens/splashscreen/splash_screen.dart' as _i11;
import 'package:amori/domain/models/feeling/feeling.dart' as _i14;
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

abstract class $AmoriAppRouter extends _i12.RootStackRouter {
  $AmoriAppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    BottomNavigationBarRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BottomNavigationBarPage(),
      );
    },
    EmotionFormRoute.name: (routeData) {
      final args = routeData.argsAs<EmotionFormRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.EmotionFormPage(
          emotion: args.emotion,
          emotionDescription: args.emotionDescription,
          key: args.key,
        ),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoritesPage(),
      );
    },
    FeelingsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FeelingsPage(),
      );
    },
    ForgottenPasswordRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgottenPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnBoardingPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RegisterPage(),
      );
    },
    SelectNewEmotionView.name: (routeData) {
      final args = routeData.argsAs<SelectNewEmotionViewArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SelectNewEmotionView(
          feeling: args.feeling,
          key: args.key,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SignInPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BottomNavigationBarPage]
class BottomNavigationBarRoute extends _i12.PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<_i12.PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EmotionFormPage]
class EmotionFormRoute extends _i12.PageRouteInfo<EmotionFormRouteArgs> {
  EmotionFormRoute({
    required String emotion,
    String? emotionDescription,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          EmotionFormRoute.name,
          args: EmotionFormRouteArgs(
            emotion: emotion,
            emotionDescription: emotionDescription,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EmotionFormRoute';

  static const _i12.PageInfo<EmotionFormRouteArgs> page =
      _i12.PageInfo<EmotionFormRouteArgs>(name);
}

class EmotionFormRouteArgs {
  const EmotionFormRouteArgs({
    required this.emotion,
    this.emotionDescription,
    this.key,
  });

  final String emotion;

  final String? emotionDescription;

  final _i13.Key? key;

  @override
  String toString() {
    return 'EmotionFormRouteArgs{emotion: $emotion, emotionDescription: $emotionDescription, key: $key}';
  }
}

/// generated route for
/// [_i3.FavoritesPage]
class FavoritesRoute extends _i12.PageRouteInfo<void> {
  const FavoritesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FeelingsPage]
class FeelingsRoute extends _i12.PageRouteInfo<void> {
  const FeelingsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FeelingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeelingsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForgottenPasswordPage]
class ForgottenPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgottenPasswordRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ForgottenPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgottenPasswordRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnBoardingPage]
class OnBoardingRoute extends _i12.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i12.PageRouteInfo<void> {
  const RegisterRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SelectNewEmotionView]
class SelectNewEmotionView
    extends _i12.PageRouteInfo<SelectNewEmotionViewArgs> {
  SelectNewEmotionView({
    required _i14.Feeling feeling,
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SelectNewEmotionView.name,
          args: SelectNewEmotionViewArgs(
            feeling: feeling,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectNewEmotionView';

  static const _i12.PageInfo<SelectNewEmotionViewArgs> page =
      _i12.PageInfo<SelectNewEmotionViewArgs>(name);
}

class SelectNewEmotionViewArgs {
  const SelectNewEmotionViewArgs({
    required this.feeling,
    this.key,
  });

  final _i14.Feeling feeling;

  final _i13.Key? key;

  @override
  String toString() {
    return 'SelectNewEmotionViewArgs{feeling: $feeling, key: $key}';
  }
}

/// generated route for
/// [_i10.SignInPage]
class SignInRoute extends _i12.PageRouteInfo<void> {
  const SignInRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
