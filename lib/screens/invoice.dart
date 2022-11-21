import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widget/getText.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {

  int selectIndex = 1;
  List invoiceList = [
    {
      "image":"assets/images/triangle.png",
      "title":"Achain",
      "time":"11:34 AM",
      "currencyone":"BTC 0.003233",
      "currencytwo":"12,300.50"
    },
    {
      "image":"assets/images/bitcoin.png",
      "title":"Bitcoin",
      "time":"11:34 AM",
      "currencyone":"BTC 0.003233",
      "currencytwo":"12,300.50"
    },
    {
      "image":"assets/images/triangle.png",
      "title":"Achain",
      "time":"11:34 AM",
      "currencyone":"ACT 38.2000",
      "currencytwo":"-2,700.00"
    },
    {
      "image":"assets/images/bitcoin.png",
      "title":"Bitcoin",
      "time":"11:34 AM",
      "currencyone":"BTC 0.003233",
      "currencytwo":"12,300.50"
    },

  ];
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var width = deviceSize.width;
    var height = deviceSize.height;
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
        title: getText("Invoice", 24, FontWeight.w600,
            Color(0xff31507F), poppinsRegular),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.only(left:25,right:25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getText("29,100.50", 30, FontWeight.w600, Color(0xff31507F), poppinsRegular),
            const SizedBox(height:9.26),
            Padding(
              padding: const EdgeInsets.only(left:25,right:25),
              child:Container(
                  padding: const EdgeInsets.only(left:2,right:2),
                width:width-103,
                height:56,
                decoration:  BoxDecoration(
                  color: const Color(0xffEBEFF1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child:
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        selectIndex = 1;
                        setState(() {

                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width:(width-103)/2-2,
                        height:48,
                        decoration:  BoxDecoration(
                          color: selectIndex==1?const Color(0xffffffff):Color(0xffEBEFF1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: getText("Tab", 14, FontWeight.w600, selectIndex==1?Color(0xff191C32):Color(0xff9395A5), poppinsRegular)
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        selectIndex = 2;
                        setState(() {});
                      },
                      child: Container(
                       alignment: Alignment.center,
                       width:(width-103)/2-2,
                        height:48,
                        decoration:  BoxDecoration(
                          color: selectIndex==2?const Color(0xffffffff):Color(0xffEBEFF1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: getText("Tab", 14, FontWeight.w600, selectIndex==2?Color(0xff191C32):Color(0xff9395A5), poppinsRegular)
                      ),
                    )
                  ],
                )
              )
            ),
            const SizedBox(height:16),
            Expanded(child: _ListviewWidget(width))
          ])
      )
    );
  }
  Widget _ListviewWidget(width){
    return SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          getText("12 June 2021", 18, FontWeight.w500, Color(0xff9395A4), poppinsRegular),
          const SizedBox(height:10),
          ListView.separated(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context ,i){
                return SizedBox(height:12);
              },
              itemCount:  invoiceList.length,
              itemBuilder: (context ,index){
                var item = invoiceList[index];
                return Container(
                      padding: const EdgeInsets.only(left:25,right:10,top:10,bottom:10),
                      height:70,width:width-50,
                      decoration:BoxDecoration(
                          color:Color(0xffffffff),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                              color:const  Color(0xffCCEEFA)
                          ),
                          boxShadow:const [
                            BoxShadow(
                                blurRadius: 4,
                                offset: Offset(0,4),
                                spreadRadius: 0,
                                color:Color(0xffCCEEFA)
                            )
                          ]
                      ),
                      child:Row(
                        children: [
                          Container(
                              width:50,height:50,

                              decoration: BoxDecoration(
                                  shape:BoxShape.circle,
                                  color:Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                        color:Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        offset: Offset(0,4)
                                    )
                                  ]
                              ),
                              child:Image.asset(item['image'], width:50,height:50,)
                          ),
                          const SizedBox(width:20),
                          Text.rich(TextSpan(
                              children: [
                                TextSpan(
                                    text: item['title'].toString(),
                                    style: const TextStyle(
                                        fontSize: 18,fontWeight: FontWeight.w500,
                                        color:Color(0xff26273C),
                                        fontFamily: poppinsRegular
                                    )),
                                TextSpan(
                                    text: "\n"
                                ),
                                TextSpan(
                                    text: item['time'].toString(),
                                    style: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w500,
                                        color:Color(0xff9395A4),
                                        fontFamily: poppinsRegular
                                    )),

                              ]
                          )),
                          Spacer(),
                          Text.rich(TextSpan(
                              children: [
                                TextSpan(
                                    text: item['currencyone'].toString(),
                                    style: const TextStyle(
                                        fontSize: 18,fontWeight: FontWeight.w500,
                                        color:Color(0xff26273C),
                                        fontFamily: poppinsRegular
                                    )),
                                TextSpan(
                                    text: "\n"
                                ),
                                TextSpan(
                                    text: item['currencytwo'].toString(),
                                    style: const TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w500,
                                        color:Color(0xff9395A4),
                                        fontFamily: poppinsRegular
                                    )),

                              ]
                          ))

                        ],
                      )
                  );
              },

          ),
          const SizedBox(height:10),
          getText("12 June 2021", 18, FontWeight.w500, Color(0xff9395A4), poppinsRegular),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context ,i){
              return SizedBox(height:12);
            },
            itemCount: invoiceList.length,
            itemBuilder: (context ,index){
              var item = invoiceList[index];
              return
                Container(
                padding: const EdgeInsets.only(left:25,right:10,top:10,bottom:10),
                  height:70,width:width-50,
                  decoration:BoxDecoration(
                      color:Color(0xffffffff),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color:const  Color(0xffCCEEFA)
                    ),
                    boxShadow:const [
                      BoxShadow(
                        blurRadius: 4,
                        offset: Offset(0,4),
                        spreadRadius: 0,
                        color:Color(0xffCCEEFA)
                      )
                    ]
                  ),
                child:Row(
                  children: [
                    Container(
                      width:50,height:50,

                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                        color:Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0,4)
                          )
                        ]
                      ),
                      child:Image.asset(item['image'], width:50,height:50,)
                    ),
                    const SizedBox(width:20),
                    Text.rich(TextSpan(
                      children: [
                        TextSpan(
                          text: item['title'].toString(),
                           style: const TextStyle(
                             fontSize: 18,fontWeight: FontWeight.w500,
                             color:Color(0xff26273C),
                             fontFamily: poppinsRegular
                           )),
                          TextSpan(
                            text: "\n"
                          ),
                        TextSpan(
                            text: item['time'].toString(),
                            style: const TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w500,
                                color:Color(0xff9395A4),
                                fontFamily: poppinsRegular
                            )),

                      ]
                    )),
                    Spacer(),
                    Text.rich(TextSpan(
                        children: [
                          TextSpan(
                              text: item['currencyone'].toString(),
                              style: const TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.w500,
                                  color:Color(0xff26273C),
                                  fontFamily: poppinsRegular
                              )),
                          TextSpan(
                              text: "\n"
                          ),
                          TextSpan(
                              text: item['currencytwo'].toString(),
                              style: const TextStyle(
                                  fontSize: 14,fontWeight: FontWeight.w500,
                                  color:Color(0xff9395A4),
                                  fontFamily: poppinsRegular
                              )),

                        ]
                    ))

                  ],
                )
              );
            },

          ),

        ]
      )
    );
  }
}
