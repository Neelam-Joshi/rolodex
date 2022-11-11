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
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
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
              Center(child:Image.asset("assets/images/logo.png",width:299,height:202)),
              const SizedBox(height:20),
              getText("Come Roll with me!",30,FontWeight.w400,Color(0xff133263),poppinsRegular),
              const SizedBox(height:20),
              Center(child:Image.asset("assets/images/profileman.png",width: 224.54,height:224.54)),
              const SizedBox(height:20),
              getText("Create your Profile",24,FontWeight.w400,Color(0xff133263),poppinsRegular),
              const SizedBox(height:29),
              Padding(
                padding: const EdgeInsets.only(left:40,right:34,),
                child:InkWell(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    decoration:BoxDecoration(
                      color:Colors.white,
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
                    child: getText("How It Works", 15, FontWeight.w700, Colors.black, poppinsRegular)
                  ),
                )
              ),
              const SizedBox(height:27),
              Padding(
                  padding: const EdgeInsets.only(left:40,right:34,),
                  child:InkWell(
                    onTap: (){},
                    child: Container(
                        alignment: Alignment.center,
                        height: 47,
                        decoration:BoxDecoration(
                            color:Colors.white,
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
                        child: getText("How Do I Signup", 15, FontWeight.w700, Colors.black, poppinsRegular)
                    ),
                  )
              ),
              const SizedBox(height:27),
              Padding(
                  padding: const EdgeInsets.only(left:40,right:34,),
                  child:InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                         builder: (context)=>UserType()
                      ));
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
                        child: getText("Get Started ", 15, FontWeight.w700, Colors.white, poppinsRegular)
                    ),
                  )
              ),
              const SizedBox(height:27),


            ]
          ),
        ),
      ),
    );
  }
}

