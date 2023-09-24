import 'package:go_router/go_router.dart';

import '../features/auth/presentation/views/login_view.dart';
import '../features/splash/presentation/views/splash_view.dart';

final router = GoRouter(
    initialLocation: SplashView.path,
    routes: [
      GoRoute(path: SplashView.path,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: LoginView.path,
        builder: (context, state) => const LoginView(),
      ),
    ]);