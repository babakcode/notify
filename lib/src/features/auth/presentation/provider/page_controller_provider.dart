import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:notify/src/features/auth/presentation/provider/state/page_controller.dart';

final loginPageControllerProvider = StateNotifierProvider.family<
        LoginPageControllerNotifier, LoginPageControllerState, PageController>(
    (ref, pageController) => LoginPageControllerNotifier(pageController));
