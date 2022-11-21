import 'package:flutter/material.dart';
import 'package:rolodex/screens/login/usertype.dart';

import '../../utils/constants.dart';
import '../../widget/getText.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Container(
      //     child:Row(
      //
      //     )
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left:16,right:16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            // Stack(
            //   children: [
            //     Container(
            //       width:MediaQuery.of(context).size.width,height:202,
            //       child:Image.asset("assets/images/logo.png",)
            //     ),
            //     Positioned(
            //       right:159,
            //           left:0,
            //
            //
            //         child:Image.asset("assets/images/leftcircle.png", width:150,height:150,)
            //     ),
            //     // Positioned(
            //     //     width:100,height:100,
            //     //     child:Image.asset("assets/images/rightcircle.png",)
            //     // ),
            //   ],
            // ),
            // Row(children: [
            //   Container(
            //     width:100,height:100,
            //     child:Image.asset("assets/images/leftcircle.png",)
            //   ),
            //   SizedBox(
            //     width:5
            //   ),
            //    Container(
            //        width:299,height:202,
            //        child:Image.asset("assets/images/logo.png",)
            //      ),
            //   Container(
            //       width:100,height:100,
            //       child:Image.asset("assets/images/rightcircle.png",)
            //   )
            // ],),
            const SizedBox(height:20),
            Image.asset("assets/images/logo.png",width: 200,height:140,),
            const Text("Come Roll with me!",
              style: TextStyle(
                  shadows: <Shadow>[
                    BoxShadow(
                      offset: Offset(2, 5),
                      blurRadius: 4.0,spreadRadius: 4,
                      color: Colors.black12,
                    )
                  ],
                fontFamily: poppinsRegular,
                fontWeight:FontWeight.w400 ,
                fontSize: 30,
                color: Color(0xff133263)
              ), textAlign: TextAlign.center,
            ),
            Expanded(child:Image.asset("assets/images/intro_four.png",width: 210,height:240)),
            getText("Create your Profile",24,FontWeight.w400,Color(0xff133263),poppinsMedium),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left:40,right:34,),
              child: _buildButton("How It Works",40,14, kWhiteColor,kBlackColor,false,
                    (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>UserType()
                  ));
                  setState(() {

                  });
                },
              ),),
            const SizedBox(height:20),
            Padding(
                padding: const EdgeInsets.only(left:40,right:34,),
                child:_buildButton("How Do I Signup",40,14, kWhiteColor,kBlackColor,false,
                       (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>UserType()
                          ));
                          setState(() {

                          });
                        },

                ),
            ),
            const SizedBox(height:20),
            Padding(
                padding: const EdgeInsets.only(left:40,right:34,),
                child:_buildButton("Get Started",40,14, Color(0xff25AAE1),kWhiteColor,false,
                      (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>UserType()
                        ));
                        setState(() {

                        });
                      },
                ),
            ),
            const SizedBox(height:80),
          ]),
      )
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
                color: kWhiteColor
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

