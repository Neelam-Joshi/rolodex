import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widget/getText.dart';
import 'editscreen.dart';

class MyAdsScreen extends StatefulWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  State<MyAdsScreen> createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {

  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {});
            },
            icon: Image.asset("assets/images/arrow_forward.png",
                width: 16.67, height: 16.67),
          ),
          title: getText("My Ads", 24, FontWeight.w600,
              Color(0xff31507F), poppinsRegular),
          centerTitle: true,
        ),
        body:  Padding(
          padding: const EdgeInsets.only(left:24,right:24),
          child: ListView.separated(
            padding: const EdgeInsets.only(top:20,bottom:20),
            itemCount: 10,
            separatorBuilder:(context, i){
              return SizedBox(height:20);
            },
            itemBuilder: (context,index){
              return _buildCard(
                "assets/images/home_business_name.png",
                "Business Name",
                "07:00 AM - 10:00 PM",

              );
            },  ),
        ),
        );
  }
  Widget _buildCard(image, title,time){
    return SizedBox(
        height: 130,
        child: Container(
                padding: const EdgeInsets.only(left:12,right: 12,bottom: 16,top:6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color:kWhiteColor,
                    boxShadow: const[
                      BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0,4),
                          color: Colors.black12
                      )
                    ]
                ),
                child:Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getText(title, 18, FontWeight.w400, kBlackColor, poppinsRegular ),
                                getText(time, 18, FontWeight.w400, kBlackColor, poppinsRegular )
                              ]),
                          const Spacer(),
                          Container(
                              width:112,height:50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,offset: Offset(0,4)
                                  )
                                ]
                              ),
                              child: Image.asset(image,width:100,height:50))
                        ]),
                    const SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton("Edit",(){
                          selectIndex=0;
                          setState(() {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>EditScreen())
                              );
                          });
                        },0),
                        _buildButton("Delete",(){
                          selectIndex=1;
                          setState(() {

                          });
                        },1),
                        _buildButton("Share",(){
                          selectIndex=2;
                          setState(() {

                          });
                        },2)
                      ],
                    )
                  ],
                )
            )


    );
  }
  Widget _buildButton(text,Function() ontap,index) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height:34,width:90,
        decoration: BoxDecoration(
            color:selectIndex==index?Color(0xff00AAE4):Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const[
              BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0,4),
                  color: Colors.black12
              )
            ]
        ),
        child: getText(text, 12, FontWeight.w500, selectIndex==index?kWhiteColor:Color(0xff7F8E9D), poppinsRegular),
      ),
    );
  }

}
