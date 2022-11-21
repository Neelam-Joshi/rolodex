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
    
    var devicesize = MediaQuery.of(context).size;
    var width = devicesize.width;
    var height = devicesize.height;
    return Scaffold(
        body: PageView.builder(
            controller: controller,
            itemCount: introList.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: width,height:height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20,),
                    // Image.asset('assets/images/logo.png',width: 200,height:140,),
                    // Container(width: 200,height:140,
                    //   child: Image.asset(introList[index].img.toString(),width: 200,height:140,
                    //   ),),
                    Expanded(
                      child:
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Container(
                              width:200,height:140,
                              child: Image.asset(
                                'assets/images/logo.png',height:140,
                              )),
                          Positioned(
                           top:100,left:40,
                            child:  Container(
                                height:240,width:151,
                              child: Image.asset(introList[index].img.toString(),
                                height:240,width:151,

                              ),
                            ),

                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height/2,
                      decoration:  BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff48B3E0).withOpacity(0.80),
                                Color(0xff48B3E0).withOpacity(0.20)
                              ]),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(33),
                              topRight: Radius.circular(33))),
                      padding: const EdgeInsets.only(top:20),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 46.38, right: 38),
                            child:Text(introList[index].title.toString(),
                              style:const TextStyle(
                                fontFamily: poppinsSemiBold,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor
                              ),
                               textAlign: TextAlign.center,
                            )
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 7, left: 20, right: 20),
                                child: Text(introList[index].subTitle.toString(),
                                  style:const TextStyle(
                                      fontFamily: poppinsRegular,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: kBlackColor,
                                    overflow: TextOverflow.ellipsis
                                  ),
                                  maxLines:3 ,
                                  textAlign: TextAlign.center,
                                )
                              ),

                          ),
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
                            height: 15,
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
                ),
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
