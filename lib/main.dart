import 'package:amori/app/auto_route.dart';
import 'package:amori/app/screens/editemotion/state/emotion_cubit.dart';
import 'package:amori/app/screens/emotionselection/state/tags_cubit.dart';
import 'package:amori/app/screens/feelings/state/delete_feeling_cubit.dart';
import 'package:amori/app/screens/feelings/state/feelings_cubit.dart';
import 'package:amori/app/screens/signin/state/auth_bloc.dart';
import 'package:amori/common/navigation_cubit.dart';
import 'package:amori/domain/firebasestorage/firebase_storage_helper.dart';
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
  getIt.registerSingleton<FirebaseStorageRepository>(
    FirebaseStorageRepository(),
  );
  getIt.registerFactory(() => TextEditingController());
}

void setUpCubits() {
  getIt.registerSingleton<AuthBloc>(
    AuthBloc(getIt.get()),
  );
  getIt.registerFactory(() => TagCubit());
  getIt.registerFactory(() => EmotionCubit());
  getIt.registerFactory(() => FeelingsCubit());
}

class AmoriApp extends StatelessWidget {
  final _router = AmoriAppRouter();
  AmoriApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(create: (_) => getIt<NavigationCubit>()),
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        BlocProvider<TagCubit>(create: (_) => getIt<TagCubit>()),
        BlocProvider<EmotionCubit>(create: (_) => getIt<EmotionCubit>()),
        BlocProvider<FeelingsCubit>(
          create: (context) => getIt<FeelingsCubit>(),
        ),
        BlocProvider<DeletionCubit>(create: (context) => DeletionCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: _router.config(),
        title: 'Amori App',
      ),
    );
  }
}
