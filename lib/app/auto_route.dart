import 'package:amori/app/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig()
class AmoriAppRouter extends $AmoriAppRouter {
  @override
  List<AutoRoute> get routes => [
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
          initial: true,
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
          ],
        ),
        AutoRoute(
          page: SelectedFav.page,
          path: '/selectedFavorite',
        ),
        AutoRoute(
          page: EmotionFormRoute.page,
          path: '/emotion-selection',
        ),
        AutoRoute(
          page: SelectNewEmotionView.page,
          path: '/select-new-emotion',
        ),
        AutoRoute(
          page: DatePickerEmotionFormRoute.page,
          path: '/date-picker-emotion-form',
        ),
        AutoRoute(
          page: DatePickerFeelingRoute.page,
          path: '/date-picker-select-your-emotion',
        )
      ];
}
