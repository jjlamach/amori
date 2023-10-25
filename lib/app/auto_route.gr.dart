// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:amori/app/screens/datepickerfeeling/date_picker_emotion_form_page.dart'
    as _i2;
import 'package:amori/app/screens/datepickerfeeling/date_picker_feeling_page.dart'
    as _i3;
import 'package:amori/app/screens/editemotion/widgets/select_new_emotion_view.dart'
    as _i11;
import 'package:amori/app/screens/emotionselection/emotion_form_page.dart'
    as _i4;
import 'package:amori/app/screens/favorites/favorites_page.dart' as _i5;
import 'package:amori/app/screens/favorites/widgets/selected_favorite_page.dart'
    as _i12;
import 'package:amori/app/screens/feelings/feelings_page.dart' as _i6;
import 'package:amori/app/screens/forgottenpassword/forgotten_password_page.dart'
    as _i7;
import 'package:amori/app/screens/home/home_page.dart' as _i8;
import 'package:amori/app/screens/navigation/bottom_navigation_page.dart'
    as _i1;
import 'package:amori/app/screens/onboarding/onboarding_page.dart' as _i9;
import 'package:amori/app/screens/register/register_page.dart' as _i10;
import 'package:amori/app/screens/signin/sign_in_page.dart' as _i13;
import 'package:amori/domain/models/feeling/feeling.dart' as _i16;
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

abstract class $AmoriAppRouter extends _i14.RootStackRouter {
  $AmoriAppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    BottomNavigationBarRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BottomNavigationBarPage(),
      );
    },
    DatePickerEmotionFormRoute.name: (routeData) {
      final args = routeData.argsAs<DatePickerEmotionFormRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DatePickerEmotionFormPage(
          feelingImg: args.feelingImg,
          date: args.date,
          key: args.key,
        ),
      );
    },
    DatePickerFeelingRoute.name: (routeData) {
      final args = routeData.argsAs<DatePickerFeelingRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DatePickerFeelingPage(
          date: args.date,
          key: args.key,
        ),
      );
    },
    EmotionFormRoute.name: (routeData) {
      final args = routeData.argsAs<EmotionFormRouteArgs>(
          orElse: () => const EmotionFormRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.EmotionFormPage(
          feelingImg: args.feelingImg,
          key: args.key,
        ),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FavoritesPage(),
      );
    },
    FeelingsRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FeelingsPage(),
      );
    },
    ForgottenPasswordRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ForgottenPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomePage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnBoardingPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RegisterPage(),
      );
    },
    SelectNewEmotionView.name: (routeData) {
      final args = routeData.argsAs<SelectNewEmotionViewArgs>(
          orElse: () => const SelectNewEmotionViewArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SelectNewEmotionView(
          feeling: args.feeling,
          differentDate: args.differentDate,
          key: args.key,
        ),
      );
    },
    SelectedFav.name: (routeData) {
      final args = routeData.argsAs<SelectedFavArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SelectedFavoritePage(
          feeling: args.feeling,
          key: args.key,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SignInPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BottomNavigationBarPage]
class BottomNavigationBarRoute extends _i14.PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<_i14.PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DatePickerEmotionFormPage]
class DatePickerEmotionFormRoute
    extends _i14.PageRouteInfo<DatePickerEmotionFormRouteArgs> {
  DatePickerEmotionFormRoute({
    required String feelingImg,
    required DateTime date,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          DatePickerEmotionFormRoute.name,
          args: DatePickerEmotionFormRouteArgs(
            feelingImg: feelingImg,
            date: date,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DatePickerEmotionFormRoute';

  static const _i14.PageInfo<DatePickerEmotionFormRouteArgs> page =
      _i14.PageInfo<DatePickerEmotionFormRouteArgs>(name);
}

class DatePickerEmotionFormRouteArgs {
  const DatePickerEmotionFormRouteArgs({
    required this.feelingImg,
    required this.date,
    this.key,
  });

  final String feelingImg;

  final DateTime date;

  final _i15.Key? key;

  @override
  String toString() {
    return 'DatePickerEmotionFormRouteArgs{feelingImg: $feelingImg, date: $date, key: $key}';
  }
}

/// generated route for
/// [_i3.DatePickerFeelingPage]
class DatePickerFeelingRoute
    extends _i14.PageRouteInfo<DatePickerFeelingRouteArgs> {
  DatePickerFeelingRoute({
    required DateTime date,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          DatePickerFeelingRoute.name,
          args: DatePickerFeelingRouteArgs(
            date: date,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DatePickerFeelingRoute';

  static const _i14.PageInfo<DatePickerFeelingRouteArgs> page =
      _i14.PageInfo<DatePickerFeelingRouteArgs>(name);
}

class DatePickerFeelingRouteArgs {
  const DatePickerFeelingRouteArgs({
    required this.date,
    this.key,
  });

  final DateTime date;

  final _i15.Key? key;

  @override
  String toString() {
    return 'DatePickerFeelingRouteArgs{date: $date, key: $key}';
  }
}

/// generated route for
/// [_i4.EmotionFormPage]
class EmotionFormRoute extends _i14.PageRouteInfo<EmotionFormRouteArgs> {
  EmotionFormRoute({
    String? feelingImg,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          EmotionFormRoute.name,
          args: EmotionFormRouteArgs(
            feelingImg: feelingImg,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EmotionFormRoute';

  static const _i14.PageInfo<EmotionFormRouteArgs> page =
      _i14.PageInfo<EmotionFormRouteArgs>(name);
}

class EmotionFormRouteArgs {
  const EmotionFormRouteArgs({
    this.feelingImg,
    this.key,
  });

  final String? feelingImg;

  final _i15.Key? key;

  @override
  String toString() {
    return 'EmotionFormRouteArgs{feelingImg: $feelingImg, key: $key}';
  }
}

/// generated route for
/// [_i5.FavoritesPage]
class FavoritesRoute extends _i14.PageRouteInfo<void> {
  const FavoritesRoute({List<_i14.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FeelingsPage]
class FeelingsRoute extends _i14.PageRouteInfo<void> {
  const FeelingsRoute({List<_i14.PageRouteInfo>? children})
      : super(
          FeelingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeelingsRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ForgottenPasswordPage]
class ForgottenPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgottenPasswordRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ForgottenPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgottenPasswordRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnBoardingPage]
class OnBoardingRoute extends _i14.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i14.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RegisterPage]
class RegisterRoute extends _i14.PageRouteInfo<void> {
  const RegisterRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SelectNewEmotionView]
class SelectNewEmotionView
    extends _i14.PageRouteInfo<SelectNewEmotionViewArgs> {
  SelectNewEmotionView({
    _i16.Feeling? feeling,
    DateTime? differentDate,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SelectNewEmotionView.name,
          args: SelectNewEmotionViewArgs(
            feeling: feeling,
            differentDate: differentDate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectNewEmotionView';

  static const _i14.PageInfo<SelectNewEmotionViewArgs> page =
      _i14.PageInfo<SelectNewEmotionViewArgs>(name);
}

class SelectNewEmotionViewArgs {
  const SelectNewEmotionViewArgs({
    this.feeling,
    this.differentDate,
    this.key,
  });

  final _i16.Feeling? feeling;

  final DateTime? differentDate;

  final _i15.Key? key;

  @override
  String toString() {
    return 'SelectNewEmotionViewArgs{feeling: $feeling, differentDate: $differentDate, key: $key}';
  }
}

/// generated route for
/// [_i12.SelectedFavoritePage]
class SelectedFav extends _i14.PageRouteInfo<SelectedFavArgs> {
  SelectedFav({
    required _i16.Feeling feeling,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SelectedFav.name,
          args: SelectedFavArgs(
            feeling: feeling,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedFav';

  static const _i14.PageInfo<SelectedFavArgs> page =
      _i14.PageInfo<SelectedFavArgs>(name);
}

class SelectedFavArgs {
  const SelectedFavArgs({
    required this.feeling,
    this.key,
  });

  final _i16.Feeling feeling;

  final _i15.Key? key;

  @override
  String toString() {
    return 'SelectedFavArgs{feeling: $feeling, key: $key}';
  }
}

/// generated route for
/// [_i13.SignInPage]
class SignInRoute extends _i14.PageRouteInfo<void> {
  const SignInRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
