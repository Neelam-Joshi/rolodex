import 'package:flutter/material.dart';
import 'package:rolodex/utils/constants.dart';
import '../../widget/getText.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  List options = [
    "Location",
    "Notifications",
    "Language",
    "Payment Method",
    "Privacy & security",
    "Help",
    "Log out"
  ];
  bool changeTabBar = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var width= deviceSize.width;
    var height = deviceSize.height;
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Image.asset("assets/images/arrow_forward.png",width:16.67,height:16.67),
        ),
        title: getText("Settings",24,FontWeight.w600,Color(0xff31507F),poppinsRegular),
        centerTitle: true,
      ),
      body: Column(
       // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height:16),
          Padding(
            padding: const EdgeInsets.only(left:16,right:5),
            child: Row(
              children: [
                Container(
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
                const SizedBox(width:17),
                const Text.rich(
                  TextSpan(
                    children:  [
                      TextSpan(
                        text: "Rolodex",
                        style: TextStyle(
                          fontFamily: poppinsRegular,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff31507F)
                        )
                      ),
                      TextSpan(
                        text: " \n"
                      ),
                      TextSpan(
                          text: "Rolodexworld@gmail",
                          style: TextStyle(
                              fontFamily: poppinsRegular,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff31507F)
                          )
                      )
                    ]
                  )
                ),
                const Spacer(),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset("assets/images/arrow_back.png",width:16.67,height:16.67),
                ),
              ],
            ),
          ),
          const SizedBox(height:24),
          ListView.separated(
                padding: const EdgeInsets.only(left:16,right:5),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, i){
                  return const SizedBox(height:11);
                  },
                itemCount: options.length,
                itemBuilder: (context, index){
                  var optionItem = options[index];
                  return ListWidget(index,optionItem,(){});
              },
            ),
          const SizedBox(height:24),
          Padding(
            padding: const EdgeInsets.only(left:16,right:5),
            child: const Text.rich(
                TextSpan(
                    children:  [
                      TextSpan(
                          text: "Version ",
                          style: TextStyle(
                              fontFamily: poppinsRegular,
                              fontSize: 9.46,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff31507F)
                          )
                      ),
                      TextSpan(
                          text: "8.2.12",
                          style: TextStyle(
                              fontFamily: poppinsRegular,
                              fontSize: 11.46,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff31507F)
                          )
                      )
                    ]
                )
            ),
          ),
          //const SizedBox(height:85),

        ],
      ),
    );
  }

  Widget ListWidget(int index,optionItem,Function() ontap) {

    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left:20,right:24.08),
        alignment: Alignment.center,
        height:50,
        decoration:BoxDecoration(
          color:Color(0xffffffff),
          borderRadius: BorderRadius.circular(14),
          boxShadow:const [
             BoxShadow(
              color:Colors.lightBlueAccent,
              blurRadius: 20,
              offset: Offset(
                0,4
              ),
              spreadRadius: 0
            )
          ]
        ),
        child:
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getText(optionItem, 20,FontWeight.w500, Color(0xff31507F), poppinsRegular),
              Spacer(),
              optionItem=="Location" ?
              getText("New York, USA", 13, FontWeight.w600, Color(0xff31507F), poppinsRegular):
              optionItem=="Language" ?
              getText("EN",15, FontWeight.w400, Color(0xff31507F), poppinsRegular):Container(),
              optionItem=="Notifications"?
              switchUI():
              optionItem=="Log out"?SizedBox(width:19,height:19):
              Image.asset("assets/images/arrow_back.png",width:16.67,height:16.67),
            ],
          ),


      ),
    );
  }
  Widget switchUI() {
    return InkWell(
      onTap: (){
        setState(() {
          if (changeTabBar == false) {
            changeTabBar = true;
            print(changeTabBar);
          } else {
            changeTabBar = false;
          }
        });
      },
      child:Container(
        width: 46.8,
        height: 27,
        decoration: BoxDecoration(
            color: Color(0xff2B6862),
            borderRadius: BorderRadius.circular(18)),
        alignment:
        changeTabBar == true
            ? Alignment.centerRight
            : Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 1, right: 1),
        child: InkWell(
          onTap: () {
            setState(() {
              if (changeTabBar != false) {
                changeTabBar = true;
              } else {
                changeTabBar = false;
              }
            });
          },
          child: Container(
            alignment: Alignment.center,
            height:23.4,
            width: 23.4,
            decoration: BoxDecoration(
                color:kWhiteColor,
                // changeTabBar == true
                //     ? kWhiteColor
                //     : const Color(0xffC0C0C0),
                borderRadius: BorderRadius.circular(100)),
          child: changeTabBar == true?Image.asset("assets/images/check_icon.png",
              width:9.47,height:6.99,color:Color(0xff2B6862))
              : Icon(Icons.close)
          ),
        ),
      ),
    );
  }
}



