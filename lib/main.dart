import 'package:amori/app/auto_route.dart';
import 'package:amori/app/screens/editemotion/state/edit_emotion_cubit.dart';
import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/home/state/home_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/app/screens/signin/state/register_form_cubit.dart';
import 'package:amori/app/screens/signin/state/sign_in_form_cubit.dart';
import 'package:amori/app/screens/signin/state/sign_in_ui_cubit.dart';
import 'package:amori/common/navigation_cubit.dart';
import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
import 'package:amori/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

// Dependency injection. Service locator/provider
final getIt = GetIt.instance;

final kLogger = Logger(
  printer: PrettyPrinter(
    colors: true,
  ),
  filter: DevelopmentFilter(),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setUpAppDependencies();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => {
      runApp(AmoriApp()),
    },
  );
}

void setUpAppDependencies() {
  setUpServices();
  setUpCubits();
}

void setUpServices() {
  getIt.registerFactory(() => TextEditingController());
  getIt.registerFactory(() => GlobalKey<FormState>());
  getIt.registerSingleton(() => FirebaseStorageHelper());
}

void setUpCubits() {
  getIt.registerFactory(() => AuthBloc());
  getIt.registerFactory(
    () => SignInFormCubit(
      getIt.get(),
      getIt.get(),
      getIt.get(),
    ),
  );
  getIt.registerFactory(
    () => SignInUICubit(),
  );
  getIt.registerFactory(
    () => RegisterFormCubit(
      getIt.get(),
      getIt.get(),
      getIt.get(),
      getIt.get(),
    ),
  );
  getIt.registerFactory(() => TagCubit());
  getIt.registerFactory(() => HomeCubit());
  getIt.registerFactory(() => EditEmotionCubit());
}

class AmoriApp extends StatelessWidget {
  final _router = AmoriAppRouter();
  AmoriApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignInUICubit>(create: (_) => getIt<SignInUICubit>()),
        BlocProvider<SignInFormCubit>(create: (_) => getIt<SignInFormCubit>()),
        BlocProvider<RegisterFormCubit>(
            create: (_) => getIt<RegisterFormCubit>()),
        BlocProvider<NavigationCubit>(create: (_) => getIt<NavigationCubit>()),
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        BlocProvider<TagCubit>(create: (_) => getIt<TagCubit>()),
        BlocProvider<HomeCubit>(create: (_) => getIt<HomeCubit>()),
        BlocProvider<EditEmotionCubit>(
          create: (_) => getIt<EditEmotionCubit>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router.config(),
        title: 'Amori App',
        theme: FlexThemeData.light(
          colors: const FlexSchemeColor(
            primary: Color(0xff00296b),
            primaryContainer: Color(0xffa0c2ed),
            secondary: Color(0xffd26900),
            secondaryContainer: Color(0xffffd270),
            tertiary: Color(0xff5c5c95),
            tertiaryContainer: Color(0xffc8dbf8),
            appBarColor: Color(0xffc8dcf8),
            error: null,
          ),
          applyElevationOverlayColor: false,
          surfaceTint: Colors.transparent,
          subThemesData: const FlexSubThemesData(
            interactionEffects: false,
            tintedDisabledControls: false,
            blendOnColors: false,
            useTextTheme: true,
            splashType: FlexSplashType.defaultSplash,
            defaultRadius: 20.0,
            adaptiveRadius: FlexAdaptive.all(),
            filledButtonRadius: 20.0,
            elevatedButtonRadius: 20.0,
            outlinedButtonRadius: 20.0,
            segmentedButtonRadius: 20.0,
            sliderTrackHeight: 4,
            inputDecoratorRadius: 20.0,
            inputDecoratorUnfocusedBorderIsColored: false,
            chipSelectedSchemeColor: SchemeColor.primaryContainer,
            chipRadius: 20.0,
            alignedDropdown: true,
            tooltipRadius: 4,
            tooltipSchemeColor: SchemeColor.inverseSurface,
            tooltipOpacity: 0.9,
            useInputDecoratorThemeInDialogs: true,
            snackBarElevation: 6,
            snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
            navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
            navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
            navigationBarMutedUnselectedLabel: false,
            navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
            navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
            navigationBarMutedUnselectedIcon: false,
            navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
            navigationBarIndicatorOpacity: 1.00,
            navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
            navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
            navigationRailMutedUnselectedLabel: false,
            navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
            navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
            navigationRailMutedUnselectedIcon: false,
            navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
            navigationRailIndicatorOpacity: 1.00,
            navigationRailBackgroundSchemeColor: SchemeColor.surface,
            navigationRailLabelType: NavigationRailLabelType.none,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
          fontFamily: GoogleFonts.notoSans().fontFamily,
        ),
        darkTheme: FlexThemeData.dark(
          colors: const FlexSchemeColor(
            primary: Color(0xffb1cff5),
            primaryContainer: Color(0xff3873ba),
            secondary: Color(0xffffd270),
            secondaryContainer: Color(0xffd26900),
            tertiary: Color(0xffc9cbfc),
            tertiaryContainer: Color(0xff535393),
            appBarColor: Color(0xff00102b),
            error: null,
          ),
          subThemesData: const FlexSubThemesData(
            interactionEffects: false,
            tintedDisabledControls: false,
            useTextTheme: true,
            splashType: FlexSplashType.defaultSplash,
            defaultRadius: 20.0,
            adaptiveRadius: FlexAdaptive.all(),
            filledButtonRadius: 20.0,
            elevatedButtonRadius: 20.0,
            outlinedButtonRadius: 20.0,
            segmentedButtonRadius: 20.0,
            sliderTrackHeight: 4,
            inputDecoratorRadius: 20.0,
            inputDecoratorUnfocusedBorderIsColored: false,
            chipSelectedSchemeColor: SchemeColor.primaryContainer,
            chipRadius: 20.0,
            alignedDropdown: true,
            tooltipRadius: 4,
            tooltipSchemeColor: SchemeColor.inverseSurface,
            tooltipOpacity: 0.9,
            useInputDecoratorThemeInDialogs: true,
            snackBarElevation: 6,
            snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
            navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
            navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
            navigationBarMutedUnselectedLabel: false,
            navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
            navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
            navigationBarMutedUnselectedIcon: false,
            navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
            navigationBarIndicatorOpacity: 1.00,
            navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
            navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
            navigationRailMutedUnselectedLabel: false,
            navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
            navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
            navigationRailMutedUnselectedIcon: false,
            navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
            navigationRailIndicatorOpacity: 1.00,
            navigationRailBackgroundSchemeColor: SchemeColor.surface,
            navigationRailLabelType: NavigationRailLabelType.none,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
          fontFamily: GoogleFonts.notoSans().fontFamily,
        ),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
