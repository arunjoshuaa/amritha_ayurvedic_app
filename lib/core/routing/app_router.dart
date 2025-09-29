import 'package:amritha_ayurvedha/features/auth/presentation/screens/login_screen.dart';
import 'package:amritha_ayurvedha/main.dart';
import 'package:go_router/go_router.dart';

final router=GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/splash',builder: (context, state) => SplashScreen(),),
        GoRoute(path: '/login',builder: (context, state) => LoginScreen(),),


  ]
);