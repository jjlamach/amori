import 'package:amori/app/auto_route.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/app/screens/signin/state/sign_in_ui_cubit.dart';
import 'package:amori/common/app_themes.dart';
import 'package:amori/common/navigation_cubit.dart';
import 'package:amori/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final getIt = GetIt.instance;

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
  setUp();
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is logged off.');
    } else {
      print('User is signed in.');
    }
  });
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => {
      runApp(AmoriApp()),
    },
  );
}

void setUp() {
  setUpServices();
  setUpCubits();
}

void setUpServices() {
  getIt.registerFactory(() => TextEditingController());
  getIt.registerFactory(() => GlobalKey<FormState>());
}

void setUpCubits() {
  getIt.registerFactory(
    () => SignInUICubit(
      getIt.get(),
      getIt.get(),
      getIt.get(),
    ),
  );
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
        BlocProvider<NavigationCubit>(create: (_) => NavigationCubit()),
        BlocProvider<AuthBloc>(create: (_) => AuthBloc()),
      ],
      child: MaterialApp.router(
        routerConfig: _router.config(),
        title: 'Amori App',
        theme: ThemeData(
          inputDecorationTheme: AppThemes.inputDecorationTheme,
          outlinedButtonTheme: AppThemes.outLinedButtonTheme,
          textButtonTheme: AppThemes.textButtomTheme,
          useMaterial3: true,
        ),
      ),
    );
  }
}
