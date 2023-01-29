import 'package:go_router/go_router.dart';
import 'package:super_clean_app/features/onboarding/presentation/onboarding_screen.dart';
import 'package:super_clean_app/features/splash/splash_screen.dart';

abstract class AppRouter {
  static const onBoarding = '/onBoarding';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: onBoarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
    ],
  );
}