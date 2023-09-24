import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:notify/src/features/auth/presentation/widgets/login_first.dart';
import 'package:notify/src/features/auth/presentation/widgets/login_intro.dart';

import '../provider/page_controller_provider.dart';

class LoginView extends ConsumerStatefulWidget {
  static const path = "/login";

  const LoginView({super.key});

  @override
  ConsumerState createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final loginPageControllerState =
        ref.watch(loginPageControllerProvider(pageController));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: (height * 0.75) -
                (loginPageControllerState.progress * height * 0.5),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: Offset(
                        -(loginPageControllerState.progress *
                            (width / 2) *
                            0.5),
                        0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: loginPageControllerState.progress,
                    child: Transform.translate(
                      offset: Offset(
                          -(loginPageControllerState.progress *
                                  (width / 2) *
                                  0.5) +
                              70,
                          0),
                      child: const Text(
                        "Notify",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(32)),
                    color: Colors.white,
                  ),
                  height: (height * 0.25 + 32) +
                      (loginPageControllerState.progress * height * 0.4),
                  child: PageView(
                    controller: pageController,
                    children: const [LoginIntro(), LoginFirstPage()],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.translate(
                      offset:
                          Offset(0, -(loginPageControllerState.progress * 70)),
                      child: Card(
                        color: Colors.blue,
                        margin: const EdgeInsets.all(12),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                            onTap: () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: SizedBox(
                                width: 56 +
                                    (loginPageControllerState.progress *
                                        (width - 56 - 24)),
                                height: 56,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Transform.translate(
                                        offset: Offset(
                                            -(loginPageControllerState
                                                    .progress *
                                                width /
                                                2),
                                            0),
                                        child: const Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        )),
                                    Transform.translate(
                                      offset: Offset(
                                          width -
                                              (loginPageControllerState
                                                      .progress *
                                                  width),
                                          0),
                                      child: const Text(
                                        "Create new account",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        softWrap: true,
                                        maxLines: 1,
                                        overflow: TextOverflow.fade,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(
                          0, 70 - (loginPageControllerState.progress * 70)),
                      child: Card(
                        color: Colors.blue,
                        margin: const EdgeInsets.all(12),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                            onTap: () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: const SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: Center(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "Already have account? ",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        TextSpan(
                                            text: "Sign In",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight:
                                                FontWeight.bold)),
                                      ],
                                    ),
                                    softWrap: true,
                                    maxLines: 1,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
