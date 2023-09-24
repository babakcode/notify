import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashView extends ConsumerStatefulWidget {
  static const path = '/splash';

  const SplashView({super.key});

  @override
  ConsumerState createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1),() {
      context.go('/login');
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png',
          width: 160,
          height: 160,
        ),
      ),
    );
  }
}
