import 'package:amori/app/auto_route.dart';
import 'package:amori/app/screens/signin/bloc/sign_in_ui_cubit.dart';
import 'package:amori/common/app_themes.dart';
import 'package:amori/common/navigation_cubit.dart';
import 'package:amori/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(131, 165, 255, 1),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => {
      runApp(AmoriApp()),
    },
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
        BlocProvider<SignInUICubit>(create: (_) => SignInUICubit()),
        BlocProvider<NavigationCubit>(create: (_) => NavigationCubit()),
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
