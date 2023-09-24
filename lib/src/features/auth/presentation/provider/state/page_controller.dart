import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPageControllerNotifier
    extends StateNotifier<LoginPageControllerState> {
  final PageController pageController;

  LoginPageControllerNotifier(this.pageController)
      : super(LoginPageControllerState(0)) {
    pageController.addListener(listener);
  }

  void listener() {
    state = state
        .copyWith(pageController.hasClients ? pageController.page ?? 0 : 0);
  }
}

class LoginPageControllerState {
  final double progress;

  LoginPageControllerState(this.progress);

  LoginPageControllerState copyWith(double? progress) =>
      LoginPageControllerState(progress ?? this.progress);
}
