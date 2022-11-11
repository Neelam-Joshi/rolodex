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
              Container(
                  padding: const EdgeInsets.only(left:30),
                  child: Image.asset("assets/images/logo.png",width:280,height:180)
              ),
              Image.asset("assets/images/rolodexuser.png",width:210,height:239.73,
                  fit: BoxFit.cover,
                ),
              const SizedBox(height:13.27),
              Expanded(
                child:Container(
                  padding: const EdgeInsets.only(left:54,right:53.33,),
                  height:426.33,
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
                        InkWell(
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
                              child: getText("As A Business ", 15, FontWeight.w700, Colors.black, poppinsRegular)
                          ),
                        ),
                        const SizedBox(height:27),
                        InkWell(
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
                              child: getText("As A Visitor ", 15, FontWeight.w700, Colors.black, poppinsRegular)
                          ),
                        ),
                        const SizedBox(height:27),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>
                                        LoginInScreen()
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
                              child: getText("Next", 18, FontWeight.w700, Colors.black, poppinsRegular)
                          ),
                        ),
                       // const SizedBox(height:113.3),

                      ],
                    )
                )
              )


            ],
          ),


    );
  }
}
