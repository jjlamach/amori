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
          page: OnBoardingRoute.page,
          path: '/onboarding',
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign-in',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
        )
      ];
}
