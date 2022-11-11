import 'package:flutter/material.dart';
import 'package:rolodex/utils/constants.dart';
import 'package:rolodex/widget/getText.dart';


class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  List categories = [
    "Breaking News",
    "Political",
    "Entertainment",
    "Lifestyle",
    "Health",
    "Business"
  ];
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
  List newsTypes = [
    "Recent",
    "Trending",
    "Popular",
    "Market Reports"
  ];
  List newsList = [
    {
      "image":"assets/images/place.png",
      "title":"Moody's: UK's economic outlook now 'negative', ratings agency says",
      "date":"19 June 2022"
    },
    {
      "image":"assets/images/business_image.png",
      "title":"Romania's Govt. adopts draft bill for the purchase of 32 F-16 fighters from Norway.",
      "date":"19 June 2022"
    }
  ];
  int catIndex = -1;

  int newsIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading:false,
        toolbarHeight: 240,
        flexibleSpace: Container(
            decoration: BoxDecoration(
                color:Color(0xff48B3E0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )
            ),
            child: Column(
              children: [
                const SizedBox(height:47),
                Padding(
                    padding:const EdgeInsets.only(left:47,right:45),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Flexible(
                            child:getText("Explore",30,FontWeight.w700,kWhiteColor,poppinsRegular)
                        ),
                        Image.asset("assets/images/bell.png",width:28,height:28.81)
                      ],
                    )
                ),
                const SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right:10),
                  child:  _buildAppBarUI()
                ),
              ],
            )
        ),
      ),
      body: ListView(
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding:const EdgeInsets.only(left:15),
              child: getText("Categories", 14, FontWeight.w500, kBlackColor, poppinsRegular)),
          const SizedBox(height:2),
          CategoriesUI(),
          const SizedBox(height:15),
          articleUI(),
          const SizedBox(height:19),
          newstypeUI(),
          newsListUI()

        ],
      ),
      
    );
  }

  Widget _buildAppBarUI() {
    return
      Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 23,top:18,bottom: 25),
      height:133,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffffffff),
        
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/business_image.png",width:88,height:81),
          SizedBox(width:20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               getText("Bucharest, Romania", 12, FontWeight.w400, kBlackColor, poppinsRegular),
               const SizedBox(height:10),
               getText("20 June 2022",14, FontWeight.w400, Color(0xff828282), poppinsRegular),
               const SizedBox(height:10),
               Row(
                 children: [
                   Image.asset("assets/images/sun.png",width: 33.33,height: 33.33,),
                   const SizedBox(width: 5,),
                   getText("22°",26, FontWeight.w400, Color(0xff1E2022), poppinsRegular),
                 ],
               )
            ],
          )
        ],
      )
    );
  }
  Widget CategoriesUI(){
    return Container(
      height:31.43,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          padding:const EdgeInsets.only(left:6.57,right:6.54),
          itemCount: categories.length,
          separatorBuilder: (context,i){
            return const SizedBox(width:7.74);
          },
          itemBuilder: (context,index){
            var catItem = categories[index];
            return
              InkWell(
              onTap: (){
                if(catIndex!=index){
                  catIndex=index;
                }
                setState(() {

                });
              },
              child: Container(
                margin: const EdgeInsets.only(bottom:5),
                alignment: Alignment.center,
                padding:const EdgeInsets.only(left:24,right:24),
                decoration:BoxDecoration(
                  color:catIndex ==index?Color(0xff00AAE4):Color(0xffF1F6FB),
                  borderRadius: BorderRadius.circular(80),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0,4),color:Colors.black12
                    )
                  ]
                ),
               child: getText(catItem, 12, FontWeight.w500, catIndex ==index?kWhiteColor:Color(0xff7F8E9D), poppinsRegular),
              ),
            );
          },
      ),
    );
  }
  Widget articleUI() {
    return
      Container(
      height:230,
      child:ListView.separated(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: articleList.length,
        separatorBuilder: (context,i){
          return SizedBox(width:20);
        },
          itemBuilder: (context,index){
            var artItem = articleList[index];
          return Stack(
            children: [
              Container(
                width:266,height:225,
                child: Image.asset(artItem['image']),
              ),
              Positioned(
                top:151,left: 5,bottom: 10,
                  child: Container(
                    padding: const EdgeInsets.only(left:12.44,top: 7),
                    width:255,height:70,
                    decoration: BoxDecoration(
                      color:  Color(0xff616951),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getText(artItem["title"], 12, FontWeight.w400, kWhiteColor, poppinsRegular),
                        const SizedBox(height: 5,),
                        getText("Read More..", 14, FontWeight.w400, kBlackColor, poppinsRegular)
                      ],
                    ),

                  )
              )
            ],
          );
          }
      )
    );
  }
  Widget newstypeUI(){
    return  Container(
        height:20,
        child:ListView.separated(
          padding: const EdgeInsets.only(left:20,right:20),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: newsTypes.length,
            separatorBuilder: (context,i){
              return SizedBox(width:40);
            },
            itemBuilder: (context,index){
              var newsItem = newsTypes[index];
              return
                InkWell(
                  onTap: (){
                    if(newsIndex!=index){
                      newsIndex=index;
                    }
                    setState(() {

                    });
                  },
                  child: getText(newsItem, 14, FontWeight.w500, newsIndex ==index?Color(0xff00AAE4):Color(0xff77838F), poppinsRegular),
                );
            }
        )
    );
  }

  Widget newsListUI() {
    return  Expanded(

        child:ListView.separated(
            padding: const EdgeInsets.only(top:20,bottom:20),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: newsList.length,
            separatorBuilder: (context,i){
              return SizedBox(width:12);
            },
            itemBuilder: (context,index){
              var newsItem = newsList[index];
              return
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 10,top:10,bottom: 10,right:10),
                    height:101,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffffffff),

                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(newsItem['image'],width:88,height:81),
                        SizedBox(width:20),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(newsItem["title"],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: poppinsRegular,
                                  color: kBlackColor,
                                  overflow: TextOverflow.ellipsis
                                ),
                                maxLines: 2,
                              ),
                              //getText(newsItem["title"], 12, FontWeight.w400, kBlackColor, poppinsRegular),
                              const SizedBox(height:10),
                              getText(newsItem["date"],14, FontWeight.w400, Color(0xff828282), poppinsRegular),
                              const SizedBox(height:10),
                            ],
                          ),
                        )
                      ],
                    )
                );
            }
        )
    );
  }
}
