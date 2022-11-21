import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widget/getText.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  List feed_users = [
    {
      "image": "assets/images/feedback_user_1.png",
      "title": "Really nice idea, this adds a little flavor to all those dummy-texts!",
      "date": "19 Nov 2022"
    },
    {
      "image": "assets/images/feedback_user_2.png",
      "title": "Really nice idea, this adds a little flavor to all those dummy-texts!",
      "date": "19 Nov 2022"
    },
    {
      "image": "assets/images/feedback_user_1.png",
      "title": "Really nice idea, this adds a little flavor to all those dummy-texts!",
      "date": "19 Nov 2022"
    },
    {
      "image": "assets/images/feedback_user_2.png",
      "title": "Moody's: UK's economic outlook now 'negative', ratings agency says",
      "date": "19 Nov 2022"
    },
    {
      "image": "assets/images/feedback_user_2.png",
      "title": "Insurer Allianz-Tiriac doubles business in Q1 2022 after City Insurance bankruptcy.",
      "date": "19 Nov 2022"
    },
    {
      "image": "assets/images/feedback_user_1.png",
      "title": "Romania's Govt. adopts draft bill for the purchase of 32 F-16 fighters from Norway",
      "date": "19 Nov 2022"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
              setState(() {

              });
            },
            icon: Image.asset("assets/images/arrow_forward.png",width:16.67,height:16.67),
          ),
          title: getText("Notification",24,FontWeight.w600,Color(0xff31507F),poppinsRegular),
          centerTitle: true,
        ),
        body:ListView.separated(
          padding: const EdgeInsets.only(left:29,right:29,top:15,bottom:15),
          separatorBuilder: (context, i){
            return SizedBox(height:12);
          },
          itemCount: feed_users.length,
          itemBuilder: (context, index){
            var feed_item= feed_users[index];
            return Container(
              //alignment: Alignment.center,s
                padding: const EdgeInsets.only(left:10,right:11,top:10 ,bottom:10,),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color:Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          offset: Offset(0,4),
                          spreadRadius: 0,
                          color:Color(0xff000000).withOpacity(0.15)
                      )
                    ]
                ),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:9),
                      child: Container(
                          width:88,height: 81,
                          child: Image.asset(feed_item['image'], width:88,height: 81,)
                      ),
                    ),
                    const SizedBox(width:12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(feed_item['title'],
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                fontFamily: poppinsRegular,
                                color:   Color(0xff000000)   ,
                                overflow: TextOverflow.ellipsis
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(height:6),
                          getText("~Anonymous~", 12, FontWeight.w400, Color(0xff979797), poppinsRegular),
                          const SizedBox(height:15),
                          getText(feed_item['date'], 14, FontWeight.w400, Color(0xff979797), poppinsRegular)

                        ],
                      ),
                    )
                  ],
                )
            );
          },
        )
    );
  }
}
