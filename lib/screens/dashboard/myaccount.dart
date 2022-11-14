import 'package:flutter/material.dart';
import 'package:rolodex/utils/constants.dart';

import '../../widget/getText.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var width= deviceSize.width;
    var height = deviceSize.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Image.asset("assets/images/arrow_forward.png",width:16.67,height:16.67,),
        ),
        title: getText("My Account",24,FontWeight.w600,Color(0xff31507F),poppinsRegular),
        centerTitle: true,
      ),
      body: Container(
        width: width, height:height,
        padding: const EdgeInsets.only(left:10,right:10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width:width-20,height:height*0.25,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/myaccount.png",
                      width:width-20,height:180,fit: BoxFit.fill,)),
              ),
            const SizedBox(height:10),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                        padding:const EdgeInsets.only(left:19.52,top:20,bottom:20),
                          width: (width-40)/2,
                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(24.77),
                              boxShadow:const[
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 0,
                                blurRadius:4,
                                offset: Offset(0, 4),
                              )
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:const EdgeInsets.only(top:2),
                                child: Container(

                                  width: 34.08,height:34.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // color:Colors.pink.shade50,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFFBF1A).withOpacity(0.15),
                                        Color(0xffFF4080).withOpacity(0.15)
                                      ]
                                    )
                                  ),
                                  child: Image.asset("assets/images/myad.png",
                                      width:16.43,height:17.4
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8.16,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  getText("55", 13, FontWeight.w600, kBlackColor, poppinsRegular),
                                  getText("My Ads", 13, FontWeight.w600, Color(0xff9098A3), poppinsRegular)
                                ],
                              )
                            ],
                          ),
                        ),
                  ),
                  Flexible(
                    child:Container(
                      padding:const EdgeInsets.only(left:19.52,top:20,bottom: 20),
                      width: (width-40)/2,
                      decoration: BoxDecoration(
                          color:kWhiteColor,
                          borderRadius: BorderRadius.circular(24.77),
                          boxShadow:const[
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0,
                              blurRadius:4,
                              offset: Offset(0, 4),
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:const EdgeInsets.only(top:0),
                            child: Container(

                              width: 34.08,height:34.08,
                              alignment: Alignment.center,
                              // decoration: BoxDecoration(
                              //   shape: BoxShape.circle,
                              //   color:Colors.pink.shade50,
                              //   // gradient: LinearGradient(
                              //   //   begin: Alignment.topCenter,
                              //   //   end: Alignment.bottomCenter,
                              //   //   colors: [
                              //   //     Colors.pinkAccent,
                              //   //     Color(0xffFF4080)
                              //   //   ]
                              //   // )
                              // ),
                              child: Image.asset("assets/images/feedback.png",
                                  width:24,height:21,fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 6,),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getText("22", 13, FontWeight.w600, kBlackColor, poppinsRegular),
                                getText("My Ads", 13, FontWeight.w600, Color(0xff9098A3), poppinsRegular)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  )


                ]),
            const SizedBox(height:15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      padding:const EdgeInsets.only(left:19.52,top:20,bottom: 20),
                      width: (width-40)/2,
                      decoration: BoxDecoration(
                          color:kWhiteColor,
                          borderRadius: BorderRadius.circular(24.77),
                          boxShadow:const[
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0,
                              blurRadius:4,
                              offset: Offset(0, 4),
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:const EdgeInsets.only(top:2),
                            child: Container(

                              width: 34.08,height:34.08,
                              alignment: Alignment.center,
                              decoration:  BoxDecoration(
                                  shape: BoxShape.circle,
                                  // color: Color(0xff3177FF).withOpacity(0.8),
                                  gradient: RadialGradient(
                                      colors: [
                                        Color(0xff2FEA9B).withOpacity(0.15),
                                        Color(0xff7FDD53).withOpacity(0.15)
                                      ]
                                  )
                                // gradient: LinearGradient(
                                //   begin: Alignment.topCenter,
                                //   end: Alignment.bottomCenter,
                                //   colors: [
                                //     Colors.pinkAccent,
                                //     Color(0xffFF4080)
                                //   ]
                                // )
                              ),
                              child: Image.asset("assets/images/check_icon.png",
                                  width:16.43,height:17.4
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getText("1235.22", 13, FontWeight.w600, kBlackColor, poppinsRegular),
                              getText("My invoice", 13, FontWeight.w600, Color(0xff9098A3), poppinsRegular)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding:const EdgeInsets.only(left:19.52,top:20,bottom: 20),
                      width:(width-40)/2,
                      decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(24.77),
                          boxShadow:const[
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 0,
                              blurRadius:4,
                              offset: Offset(0, 4),
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:const EdgeInsets.only(top:0),
                            child: Container(
                              width: 34.08,height:34.08,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  gradient: RadialGradient(
                                      center: Alignment(-8, -6),
                                      radius: 0.2,
                                      colors: [
                                        Color(0xff25AAE1).withOpacity(0.7),
                                        Color(0xff3177FF).withOpacity(0.3)
                                      ]
                                  )
                              ),
                              child: Image.asset("assets/images/bottombar_home.png",
                                  width:16.43,height:17.4,color:kBlackColor
                              ),
                            ),
                          ),
                          const SizedBox(width: 6,),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getText("Visit", 13, FontWeight.w600, kBlackColor, poppinsRegular),
                                getText("My Rolodex", 13, FontWeight.w600, Color(0xff9098A3), poppinsRegular)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),
            const SizedBox(height:19.14),
            Padding(
                padding: const EdgeInsets.only(left:10,right:10),
                child: _buildButton("Share my post",45,14,Color(0xffffffff),Color(0xff000000),false)),
            const SizedBox(height:10),
            Padding(
                padding: const EdgeInsets.only(left:10,right:10),
                child: _buildButton("Refer a Friend",45,14,Color(0xff00AAE4),Color(0xff000000),false)),
            const SizedBox(height:10),
            Padding(
                padding: const EdgeInsets.only(left:10,right:10),
                child: _buildButton("Log out",45,14,Color(0xffffffff),Color(0xff000000),false)),
            const SizedBox(height:10),
          ],
        ),
      ),
    );
  }
}

 Widget _buildButton(
     String btnName,
     double btnHeight,
     double borderRadius,
     Color containColor,
     Color textColor,
     isBorder
     ) {

  return Container(
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
    child: getText(btnName, 16, FontWeight.w500, kBlackColor, poppinsRegular),
  );
}
