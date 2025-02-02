import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibook/constants.dart';
import 'package:ibook/features/home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }



  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(kLogo),
        SizedBox(
          height: 15,
        ),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: Text(
                  'Unlocking Minds, One Page at a Time',
                  style: TextStyle(fontSize: 24, fontFamily: kFont),
                ),
              );
            })
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: const Duration(milliseconds: 300));
    });
  }
}
