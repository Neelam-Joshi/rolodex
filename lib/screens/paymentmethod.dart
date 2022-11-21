import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widget/getText.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
          title: getText("Payment Method", 24, FontWeight.w600,
              Color(0xff31507F), poppinsRegular),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            children: [
              Stack(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(left: 21.2, right: 4,top:11),
                    child: Container(
                      height:224.65,
                        child: Image.asset(
                          "assets/images/cardtwo.png",
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 7, right:16),
                      child: Container(
                          height: 224.65,
                          child: Image.asset(
                            "assets/images/card.png",
                            fit: BoxFit.fill,
                          ))),

                ]
              ),
              const SizedBox(height: 40),
              buildTextfield(
                "Name of card",
              ),
              const SizedBox(height: 20),
              buildTextfield(
                "Card number",
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(0),
                          border:
                              Border.all(color: Color(0xffBDBDBD), width: 1)),
                      width: (MediaQuery.of(context).size.width - 24) / 2,
                      height: 40,
                      child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Exp Date",
                              hintStyle: const TextStyle(
                                fontFamily: poppinsRegular,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff212529),
                              )))),
                  Container(
                      padding: const EdgeInsets.only(left:20),
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(0),
                          border:
                              Border.all(color: Color(0xffBDBDBD), width: 1)),
                      width: (MediaQuery.of(context).size.width - 24) / 2,
                      height: 40,
                      child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "CVV/CVC",
                              hintStyle: const TextStyle(
                                fontFamily: poppinsRegular,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff212529),
                              )))),
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildTextfield(hinttext) {
    return Container(
        padding: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(color: Color(0xffBDBDBD), width: 1),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: Offset(0, 4))
            ]),
        height: 40,
        child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hinttext,
                hintStyle: const TextStyle(
                  fontFamily: poppinsRegular,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff212529),
                ))));
  }
}
