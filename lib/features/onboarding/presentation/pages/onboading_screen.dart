import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_med/features/onboarding/domain/Entities/onboarding_model.dart';
import 'package:online_med/features/onboarding/presentation/widgets/onboarding_textstyle.dart';

import 'login_onboarding_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  final PageController _controller = PageController();
  var currentPageValue = 0.0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              height: kToolbarHeight + 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(0xFFA1A8B0),
                      ),
                    )),
              ],
            ),
            Expanded(
                flex: 2,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: [
                    SizedBox(
                        child: Image.asset(
                      OnboardingModel.items[0].img,
                      fit: BoxFit.fitHeight,
                    )),
                    SizedBox(
                        child: Image.asset(
                      OnboardingModel.items[1].img,
                      fit: BoxFit.fitHeight,
                    )),
                    SizedBox(
                        child: Image.asset(
                      OnboardingModel.items[2].img,
                      fit: BoxFit.fitHeight,
                    )),
                  ],
                )),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 17),
                decoration: const BoxDecoration(
                    color: Color(0xFFF5F7FF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Stack(
                        children: [
                          PageView(
                            onPageChanged: (index) {
                              setState(() {
                              currentIndex = index;
                              });
                            },
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            controller: _controller,
                            children: [
                              OnboardingText(title: OnboardingModel.items[0].title),
                              OnboardingText(title: OnboardingModel.items[1].title),
                              OnboardingText(title: OnboardingModel.items[2].title),
                            ],
                          ),
                          Positioned(
                              bottom: 38,
                              right: 18,
                              child: SizedBox(
                                height: 56,
                                width: 56,
                                child: FloatingActionButton(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28),
                                    ),
                                    backgroundColor: const Color(0xFF199A8E),
                                    onPressed: () =>
                                        nextPage(index: currentIndex),
                                    child: const Icon(
                                      Icons.navigate_next,
                                      color: Colors.white,
                                    )),
                              )),
                          Positioned(
                              left: 18,
                              bottom: 58,
                              child: SizedBox(
                                height: 8,
                                width: 60,
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                  return AnimatedContainer(
                                    margin: const EdgeInsets.symmetric(horizontal: 2),
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: currentIndex == index
                                          ? const Color(0xFF199A8E)
                                          : const Color(0x4D199A8E),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    duration: const Duration(microseconds: 500),
                                    
                                  );
                                }),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  nextPage({required int index}) {
    if(index == 2){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) =>const LoginOnBoardingScreen()));
    }
    controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    _controller.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }
}
