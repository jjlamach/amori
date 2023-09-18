import 'package:amori/app/auto_route.dart';
import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/app/screens/signin/state/register_form_cubit.dart';
import 'package:amori/app/screens/signin/state/sign_in_form_cubit.dart';
import 'package:amori/app/screens/signin/state/sign_in_ui_cubit.dart';
import 'package:amori/common/app_themes.dart';
import 'package:amori/common/navigation_cubit.dart';
import 'package:amori/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

// Dependency injection. Service locator/provider
final getIt = GetIt.instance;

// TODO: Complete scheme of the app
final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(131, 165, 255, 1),
);

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
}

void setUpCubits() {
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
    ),
  );
  getIt.registerFactory(() => TagCubit());
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
        BlocProvider<NavigationCubit>(create: (_) => NavigationCubit()),
        BlocProvider<AuthBloc>(create: (_) => AuthBloc()),
        BlocProvider<TagCubit>(create: (_) => TagCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: _router.config(),
        title: 'Amori App',
        theme: ThemeData(
          chipTheme: const ChipThemeData(
            labelPadding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
            side: BorderSide(
              color: Color.fromRGBO(172, 196, 254, 1),
            ),
            selectedColor: Color.fromRGBO(172, 196, 254, 1),
          ),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: Color.fromRGBO(0, 0, 0, 1),
              size: 30,
            ),
          ),
          // colorScheme: kColorScheme,
          inputDecorationTheme: AppThemes.inputDecorationTheme,
          outlinedButtonTheme: AppThemes.outLinedButtonTheme,
          textButtonTheme: AppThemes.textButtomTheme,
          useMaterial3: true,
        ),
      ),
    );
  }
}
