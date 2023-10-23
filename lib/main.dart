import 'package:amori/app/auto_route.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/feelings/state/delete_feeling_cubit.dart';
import 'package:amori/app/screens/feelings/state/feeling_cubit.dart';
import 'package:amori/app/screens/home/state/home_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/dimen.dart';
import 'package:amori/domain/firebasecloudrepository/firebase_cloud_storage_impl.dart';
import 'package:amori/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
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
  getIt.registerSingleton<FirebaseCloudStorageImpl>(
    FirebaseCloudStorageImpl(),
  );
  getIt.registerFactory(() => TextEditingController());
}

void setUpCubits() {
  getIt.registerSingleton<AuthBloc>(
    AuthBloc(
      getIt.get(),
    ),
  );
  getIt.registerFactory(() => TagCubit());
  getIt.registerFactory(() => FeelingsCubit());
  getIt.registerFactory(() => FeelingCubit());
  getIt.registerFactory(() => HomeCubit(getIt.get()));
  getIt.registerFactory(() => DeletionCubit());
}

class AmoriApp extends StatelessWidget {
  final _router = AmoriAppRouter();
  AmoriApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.startApp(),
            ),
        ),
        BlocProvider<TagCubit>(create: (_) => getIt<TagCubit>()),
        BlocProvider(
          create: (context) => getIt.get<FeelingsCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            surfaceTintColor: Colors.transparent,
          ),
          outlinedButtonTheme: const OutlinedButtonThemeData(
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 40.0, vertical: 1),
              ),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              textStyle: MaterialStatePropertyAll(
                TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(
                Color(0xffACC4FE),
              ),
              side: MaterialStatePropertyAll(
                BorderSide(
                  color: Color(0xffACC4FE),
                  width: 2.0,
                ),
              ),
            ),
          ),
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xffACC4FE),
            onPrimary: Colors.white,
            secondary: Color(0xff83A5FF),
            onSecondary: Colors.white,
            error: Colors.redAccent,
            onError: Colors.black,
            background: Color(0xffFFFFFF),
            onBackground: Colors.black,
            surface: Color(0xffFFFFFF),
            onSurface: Colors.black,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedIconTheme: IconThemeData(
              size: 40,
              color: Color.fromRGBO(131, 165, 255, 1),
            ),
            unselectedIconTheme: IconThemeData(
              size: 40,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
              borderSide: const BorderSide(
                color: Color.fromRGBO(172, 196, 254, 1),
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
              borderSide: const BorderSide(
                color: Color.fromRGBO(233, 233, 233, 1),
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
              borderSide: const BorderSide(
                color: Color.fromRGBO(172, 196, 254, 1),
                width: 2.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimen.borderRadiusCircular),
              borderSide: const BorderSide(
                color: Colors.redAccent,
                width: 2.0,
              ),
            ),
          ),
          chipTheme: ChipThemeData(
            side: const BorderSide(
              color: Color.fromRGBO(172, 196, 254, 1),
              width: 1.0,
            ),
            selectedColor: const Color.fromRGBO(172, 196, 254, 1),
            showCheckmark: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Dimen.borderRadiusCircular,
              ),
            ),
          ),
          dialogTheme: const DialogTheme(
            surfaceTintColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(Dimen.borderRadiusCircular),
              ),
            ),
          ),
        ),
        routerConfig: _router.config(),
        title: 'Amori: Journal your feelings',
      ),
    );
  }
}
