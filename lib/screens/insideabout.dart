import 'package:flutter/material.dart';
import 'package:rolodex/widget/getText.dart';

import '../utils/constants.dart';

class InsideAboutScreen extends StatefulWidget {
  const InsideAboutScreen({Key? key}) : super(key: key);

  @override
  State<InsideAboutScreen> createState() => _InsideAboutScreenState();
}

class _InsideAboutScreenState extends State<InsideAboutScreen> {
  List articleList = [

    {
      "title":"Romanian president expresses support for Ukraine's EU bid.",
      "image":"assets/images/president.png"
    },
    {
      "title": "BSOG announces first Black Sea natural gas delivery to Romania.",
      "image":"assets/images/president.png"
    },


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width,
            child:Image.asset("assets/images/news_background.png",)
          ),
          Positioned(
            right:24,top:34,
            child:  Container(
              alignment: Alignment.center,
              width:49,height:49,
              decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff25AAE1),
                        Color(0xffD6EFF9)
                      ]
                  )
              ),
              child: Image.asset("assets/images/profile_icon.png",
                  width:42,height:42
              ),
            ),
          ),
          Positioned(
              top:41,left:28,
              child:InkWell(
                onTap: (){
                  Navigator.pop(context);
                  setState(() {

                  });
                },
                child: Container(
                    width:35,height: 25,
                    child:Image.asset("assets/images/backarrow.png")
                ),
              )
          ),
          Positioned(
             top: MediaQuery.of(context).size.height/2-100,
              left: 0,right:0,bottom:0,
              child: Container(
                padding: const EdgeInsets.only(
                  left:31,right:28,top:31,
                ),
                decoration:const BoxDecoration(
                    color: Color(0xff162B3C),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  )
                 ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getText("Moody's: UK's economic outlook now 'negative', ratings agency says",
                          20, FontWeight.w400, kWhiteColor, poppinsRegular),
                      const SizedBox(height:20),
                      getText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eleifend tempor at egestas diam malesuada donec donec. Vestibulum sed euismod purus magna lectus viverra nunc turpis vitae. Morbi nunc "
                          "ornare pulvinar placerat. Faucibus eget laoreet morbi euismod egestas tempor.",
                          15, FontWeight.w400, Color(0xffffffff).withOpacity(0.50), poppinsRegular),
                      const SizedBox(height:5),
                      getText("Similar News",
                          18, FontWeight.w400, kWhiteColor, poppinsRegular),
                      articleUI(),

                    ],
                  ),
                ),

              )
          )
        ],
      )
    );
  }
  Widget articleUI() {
    return
      Container(
          height:250,
          child:ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: articleList.length,
              separatorBuilder: (context,i){
                return SizedBox(width:15);
              },
              itemBuilder: (context,index){
                var artItem = articleList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:160, width:180,
                      child: Image.asset(artItem['image']),
                    ),
                    getText("Romanian app turns", 14, FontWeight.w500, kWhiteColor, poppinsRegular),
                    getText("19 June 2022", 14, FontWeight.w400, Color(0xffA8B2BC), poppinsRegular)
                  ],
                );
              }
          )
      );
  }
}
