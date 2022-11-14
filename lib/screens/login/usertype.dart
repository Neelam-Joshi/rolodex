import 'package:flutter/material.dart';
import 'package:rolodex/screens/login/loginscreen.dart';
import '../../utils/constants.dart';
import '../../widget/getText.dart';

class UserType extends StatefulWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height:10),
              Image.asset("assets/images/logo.png",width: 200,height:140, fit: BoxFit.cover,),
              Expanded(
                child: Image.asset("assets/images/rolodexuser.png",width:230,height:140,

                ),
              ),
              const SizedBox(height:13.27),
              Container(
                  padding: const EdgeInsets.only(left:54,right:53.33, top:70),
                  height:350,
                  decoration: const BoxDecoration(
                    gradient:
                    LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff25AAE1),
                        Colors.white
                      ]
                    ),
                    borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33))
                  ),
                  child: Column(
                      children: [
                       const SizedBox(height:50),
                       _buildButton("As A Business",40,14, kWhiteColor,kBlackColor,false,
                          (){},
                       ),
                        const SizedBox(height:27),
                        _buildButton("As A Visitor ",40,14, kWhiteColor,kBlackColor,false,
                              (){},
                        ),
                        const SizedBox(height:27),
                        _buildButton("Next",40,14, Color(0xff25AAE1),kWhiteColor,false,
                              (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context)=>
                                            LoginInScreen()
                                    )
                                );
                          },),
                       // const SizedBox(height:113.3),
                      ])
                )


            ]),
    );
  }
  Widget _buildButton(
      String btnName,
      double btnHeight,
      double borderRadius,
      Color containColor,
      Color textColor,
      isBorder,
      Function ()ontap
      ) {

    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height:btnHeight,
        decoration: BoxDecoration(
            color: containColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: isBorder?Border.all(
                width:1,color: kBlackColor
            ):Border.all(
                width:0,
                color: btnName=="Next"?Color(0xff25AAE1):kWhiteColor
            ),
            boxShadow:const[
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0,
                blurRadius:4,
                offset: Offset(0, 4),
              )
            ]
        ),
        child: getText(btnName, 15, FontWeight.w700, textColor, poppinsBold),
      ),
    );
  }
}
