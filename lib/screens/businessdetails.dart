import 'package:flutter/material.dart';
import 'package:rolodex/widget/getText.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../utils/constants.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({Key? key}) : super(key: key);

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
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
                child:Image.asset("assets/images/bussiness_detail.png",)
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
                top: MediaQuery.of(context).size.height/2-50,
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
                        getText("Business Detials",
                            20, FontWeight.w400, kWhiteColor, poppinsRegular),
                        const SizedBox(height:5),
                        RatingUI(),
                        const SizedBox(height:5),
                        ButtonUI(),
                        const SizedBox(height:5),
                        getText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eleifend tempor at egestas diam malesuada donec donec. Vestibulum sed euismod purus magna lectus viverra nunc turpis vitae. Morbi nunc "
                            "ornare pulvinar placerat. "
                        "Lorem ipsum dolor sit amet, \n \nconsectetur adipiscing elit. Eleifend tempor at egestas diam malesuada donec donec. Vestibulum sed euismod purus magna lectus viverra nunc turpis vitae. Morbi nunc ornare pulvinar placerat. Faucibus eget laoreet morbi euismod egestas tempor."
                            "Faucibus eget laoreet morbi euismod egestas tempor.",
                            15, FontWeight.w400, Color(0xffffffff).withOpacity(0.50), poppinsRegular),

                      ],
                    ),
                  ),

                )
            )
          ],
        )
    );
  }
  Widget ButtonUI(){
    return Row(
      children: [
        Container(
          width: 130,height:35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color:Color(0xff00AAE4),
              borderRadius: BorderRadius.circular(10),

          ),
          child:getText("About Us", 20, FontWeight.w700, Colors.white, poppinsRegular)

        ),
        const SizedBox(width: 5,),
        Container(
            width: 130,height:35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:Color(0xff1A3245),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0,4)
                )
              ]

            ),
            child:getText("Services", 20, FontWeight.w700, Colors.white, poppinsRegular)

        ),
        const SizedBox(width: 5,),
        Container(
          width:29.17,height: 29.17,
          child:Image.asset("assets/images/infosquare.png")
        )
      ],
    );
  }
  Widget RatingUI() {
    return RatingBar(
      initialRating: 4,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4),
      ratingWidget: RatingWidget(
        full: Image.asset(
          'assets/images/star.png',
          width: 20,
          height: 17.78,fit: BoxFit.cover,
        ),
        half: Image.asset(
          'assets/images/star.png',
          width: 20,
          height: 17.78,fit: BoxFit.cover
        ),
        empty: Image.asset(
          'assets/images/star.png',
          width: 20,
          height: 17.78,fit: BoxFit.cover
        ),
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
