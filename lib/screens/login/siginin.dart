import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rolodex/screens/dashboard/home/homescreen.dart';
import 'package:rolodex/utils/constants.dart';
import 'package:rolodex/widget/getText.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../bottombar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  // TextEditingController  otpController = TextEditingController();
  TextEditingController pinOneController   = TextEditingController();
  TextEditingController pinTwoController   = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>  true,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left:44,right:47),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height:260),
                  getText("Sign In", 25, FontWeight.w500, Color(0xff102037), poppinsRegular),
                  const SizedBox(height:24.74),
                  getText("Enter verification code", 14, FontWeight.w400, Color(0xff102037), poppinsRegular),
                  const SizedBox(height:8.66),
                  // PinCodeTextField(
                  //   controller: otpController,
                  //   textStyle: const TextStyle(
                  //       fontSize: 20,
                  //       color: kBlackColor,
                  //       fontWeight: FontWeight.w400,
                  //       fontFamily: poppinsRegular),
                  //   inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  //   pinTheme: PinTheme(
                  //
                  //     shape: PinCodeFieldShape.box,
                  //     activeColor: kBlackColor,
                  //     disabledColor: kBlackColor,
                  //     selectedColor: kBlackColor,
                  //     inactiveColor: kBlackColor,
                  //     fieldHeight: 44.53,
                  //     fieldWidth: 62.63,
                  //     borderRadius: BorderRadius.circular(8),
                  //     activeFillColor: Colors.white,
                  //   ),
                  //   length: 4,
                  //   appContext: context,
                  //   keyboardType: TextInputType.number,
                  //   onChanged: (val) {},
                  // ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      PINNumber( pinOneController, TextInputAction.next,  ),
                      SizedBox(width: 15.0),
                      PINNumber( pinTwoController, TextInputAction.next,  ),
                      SizedBox(width: 15.0),
                      PINNumber( pinThreeController, TextInputAction.next,  ),
                      SizedBox(width: 15.0),
                      PINNumber( pinFourController, TextInputAction.next,  ),
                    ]
                  ),
                  const SizedBox(height:18.56),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context)=>const BottomBar()
                          )
                      );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 47,
                        decoration:BoxDecoration(
                            color:Color(0xff25AAE1),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: Offset(4,0),
                                color: Colors.black12,
                              )
                            ]
                        ),
                        child: getText("Proceed", 17, FontWeight.w700, Colors.white, poppinsRegular)
                    ),
                  ),

                ],
              ),
          ),

        ),
        resizeToAvoidBottomInset: false,

      ),
    );
  }

  PINNumber( TextEditingController controller,   TextInputAction next,  ){
    return  Stack(
      // overflow: Overflow.visible,
      children: [
        Container(
          padding: EdgeInsets.only(left: 0, right: 0),
          width: 48.0, height: 48.0,
          decoration: BoxDecoration(
              color: Color(0x51317bef),
              borderRadius: BorderRadius.circular(8.0),
              // boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2.0)]
          ),
          child: TextField(
            maxLength: 1, controller: controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textInputAction: next,
            onChanged: (text) {
              if (text.length == 1 && next != TextInputAction.done) {
                FocusScope.of(context).nextFocus();
              }
              if (text.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            decoration: InputDecoration(
                filled: true,
                counterText: '',
                hintText: '', enabledBorder: InputBorder.none, disabledBorder: InputBorder.none, focusedBorder: InputBorder.none
            ),
          ),
        ),

        Positioned(
          top: -10.0,
          child: Container(
            padding: EdgeInsets.only(left: 10),
            width: 48.0,
            color: Colors.white,
          ),
        )

      ],
    );
  }
}
