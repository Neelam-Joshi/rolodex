import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../widget/getText.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TextEditingController searchController = TextEditingController();

  List usersList = [
    {
      "image":"assets/images/myrolodex-One.png",
      "name": "Business Name",
      "time":"07:00 AM - 10:00 PM"

    },
    {
      "image":"assets/images/search_page.png",
      "name": "Business Name",
      "time":"07:00 AM - 10:00 PM"
    }

  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var width= deviceSize.width;
    var height = deviceSize.height;
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading:false,
        toolbarHeight: MediaQuery.of(context).size.height*0.26,
        flexibleSpace: Container(
            padding:const EdgeInsets.only(left:27,right:25,top:11,),
            decoration: const BoxDecoration(
                color:Color(0xff48B3E0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )
            ),
            child: Column(
             // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height:30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width:49,height:49,
                      decoration:const BoxDecoration(
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
                    Flexible(
                        child:getText("Home",30,FontWeight.w700,kWhiteColor,poppinsRegular)
                    ),
                    Image.asset("assets/images/bell.png",width:28,height:28.81)
                  ],
                ),
                const SizedBox(height:10),
                _buildTextField("Search..", TextInputType.text, searchController,"assets/images/search.png"),
                const SizedBox(height:6.85),
                Row(
                  children: [
                    getText("Filters", 14, FontWeight.w400, kBlackColor, poppinsRegular),
                    const SizedBox(width:5.15),
                    Image.asset("assets/images/filter.png",width:20,height:20)
                  ],),
                const SizedBox(height:5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.only(left:14,right:14),
                          alignment: Alignment.center,
                          height:30,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: const[
                                BoxShadow(
                                    blurRadius: 4,
                                    offset: Offset(0,4),
                                    color: Colors.black12
                                )
                              ]
                          ),
                          child: getText("Near me", 12, FontWeight.w500, Color(0xff575757), poppinsRegular),
                        ),
                      ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.only(left:10,right:10),
                        alignment: Alignment.center,
                        height:30,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const[
                              BoxShadow(
                                  blurRadius: 4,
                                  offset: Offset(0,4),
                                  color: Colors.black12
                              )
                            ]
                        ),
                        child: getText("City", 12, FontWeight.w500, Color(0xff575757), poppinsRegular),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.only(left:6.5,right:6.5),
                        alignment: Alignment.center,
                        height:30,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const[
                              BoxShadow(
                                  blurRadius: 4,
                                  offset: Offset(0,4),
                                  color: Colors.black12
                              )
                            ]
                        ),
                        child: getText("Postal Code", 12, FontWeight.w500, Color(0xff575757), poppinsRegular),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.only(left:14.5,right:14.5),
                        alignment: Alignment.center,
                        height:30,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const[
                              BoxShadow(
                                  blurRadius: 4,
                                  offset: Offset(0,4),
                                  color: Colors.black12
                              )
                            ]
                        ),
                        child: getText("Category", 12, FontWeight.w500, Color(0xff575757), poppinsRegular),
                      ),
                    ),
                  ],
                ),
              ])
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:17,right:21),
        child: ListView.separated(
          padding: const EdgeInsets.only(top:10,bottom:20),
          itemCount: usersList.length,
          separatorBuilder:(context, i){
            return SizedBox(height:16);
          },
          itemBuilder: (context,index){
            var item = usersList[index];
            return _buildCard(
                item,width
            );
          }),
      ),
    );
  }
  Widget _buildTextField(hinttext,TextInputType keyboardtype, TextEditingController controller,imageUrl ){
    return Container(
      //padding: const EdgeInsets.only(left:12),
        height:36.99,
        decoration:BoxDecoration(
          color:const Color(0xffffffff),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
              width: 1,
              color:const Color(0xffffffff)
          ),
          // boxShadow: const[
          //   BoxShadow(
          //     blurRadius: 8,
          //     offset: Offset(0,4),
          //     color: Color(0xff162B3C)
          //   )
          // ]
        ),
        child: TextField(
          controller: controller,
          keyboardType: keyboardtype,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 3),
              border: InputBorder.none,
              hintText: hinttext,
              hintStyle:  const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily:poppinsRegular,
                  color: Color(0xff565656)

              ),
              prefixIcon:Container(
                width:30,height:30,
                child: IconButton(
                  onPressed: (){},
                  icon: Image.asset(imageUrl,width:30,height:30,color:Color(0xff546972)),
                ),
              )

          ),
        )
    );
  }

  Widget _buildCard(item,double width){
    return Column(
          children: [
            Container(
                width:width-38,height:167,
                child: Image.asset(item['image'],width:width-38,height:167,fit: BoxFit.fill,)),
            const SizedBox(height:6),
            Container(
                padding: const EdgeInsets.only(left:16,right: 16,bottom: 16,top:6),
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
                                getText(item['name'], 20, FontWeight.w400, kBlackColor, poppinsRegular ),
                                const SizedBox(height:6),
                                getText(item['time'], 20, FontWeight.w400, kBlackColor, poppinsRegular )

                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top:15),
                              child: Image.asset("assets/images/heart.png",width:28,height:28) ,
                            )


                          ],
                        ),
                        const SizedBox(height:13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildButton("Call",(){
                              selectIndex=0;
                              setState(() {

                              });
                            },0),
                            _buildButton("Share",(){
                              selectIndex=1;
                              setState(() {

                              });
                            },1),
                            _buildButton("Email",(){
                              selectIndex=2;
                              setState(() {

                              });
                            },2)
                          ],
                        )
                      ],
                    )
                )
          ]);

  }

  Widget _buildButton(text,Function() ontap,index) {
    return
      InkWell(
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
