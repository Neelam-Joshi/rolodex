import 'package:flutter/material.dart';
import 'package:rolodex/screens/login/profile.dart';
import 'package:rolodex/utils/constants.dart';
import 'package:rolodex/widget/content.dart';
import 'package:rolodex/widget/custombtn.dart';
import 'package:rolodex/widget/getText.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController controller = PageController();

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            controller: controller,
            itemCount: introList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 41, right: 45),
                            child: Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.cover,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 175),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              introList[index].img.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff317BEF),
                              Color(0xff00317BEF)]),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(33),
                            topRight: Radius.circular(33))),
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 46.38, right: 38),
                          child: getText(introList[index].title.toString(), 20,
                              FontWeight.w600, kBlackColor, poppinsSemiBold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 7, left: 37.33, right: 24),
                          child: getText(introList[index].subTitle.toString(),
                              20, FontWeight.w400, kBlackColor, poppinsRegular),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 22, right: 24),
                          child: customBtn('Next', () {
                            index==2?
                                Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context)=>
                                      ProfileScreen()
                                )
                                ):
                            controller.nextPage(
                              duration: const Duration(microseconds: 100),
                              curve: Curves.easeInOut,
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        index == 0
                            ? dots1()
                            : index == 1
                                ? dots2()
                                : dots3(),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ],
              );
            }));
  }

  int currentIndex = 0;

  dots1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 7.3,
          width: 35.73,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7.3,
          width: 7.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7.3,
          width: 7.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
      ],
    );
  }

  dots2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 7.3,
          width: 7.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7.3,
          width: 35.73,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7.3,
          width: 7.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
      ],
    );
  }

  dots3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 7.3,
          width: 7.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7.3,
          width: 7.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7.3,
          width: 35.73,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  colors: [Color(0xff25AAE1), Color(0xff820141A4)])),
        ),
      ],
    );
  }

  void nextPage() {
    controller.animateToPage(int.parse(controller.page.toString()) + 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }
}
