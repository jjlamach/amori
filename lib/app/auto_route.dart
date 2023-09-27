import 'package:amori/app/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AmoriAppRouter extends $AmoriAppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          path: '/splash',
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign-in',
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
        ),
        AutoRoute(
          page: ForgottenPasswordRoute.page,
          path: '/forgotten-password',
        ),
        AutoRoute(
          page: OnBoardingRoute.page,
          path: '/onboarding',
        ),
        AutoRoute(
          page: BottomNavigationBarRoute.page,
          path: '/index',
          children: [
            AutoRoute(
              page: FeelingsRoute.page,
              path: 'feelings',
            ),
            AutoRoute(
              page: HomeRoute.page,
              path: 'home',
            ),
            AutoRoute(
              page: FavoritesRoute.page,
              path: 'favorites',
            ),
            AutoRoute(
              page: SelectedEmotionRoute.page,
              path: 'selected-emotion',
            ),
          ],
        ),
        AutoRoute(
          page: EmotionSelectionRoute.page,
          path: '/emotion-selection',
        ),
      ];
}
