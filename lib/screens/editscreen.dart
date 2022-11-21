import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widget/getText.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          title: getText("Edit", 24, FontWeight.w600,
              Color(0xff31507F), poppinsRegular),
          centerTitle: true,
        ),
        body:
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left:4, right:4),
                        child:
                        Container(
                            height: 224.65,width: MediaQuery.of(context).size.width-32,
                            child: Image.asset(
                              "assets/images/myaccount.png",
                              fit: BoxFit.fill,
                            ))),
                    Positioned(
                      left:280,top:4,
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                            height: 45,width: 46,
                            child: Image.asset(
                              "assets/images/edit.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                    )

                  ],
                )
                 ,
                 const SizedBox(height: 10),
                 Padding(
                   padding: const EdgeInsets.only(left: 15, right: 15),
                   child: buildTextfield(
                    "Business name  ",
                ),
                 ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: buildTextfield(
                    "Timing",
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: buildTextfield(
                    "Location",
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: buildTextfield(
                    "Email",
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 7,
                                    spreadRadius: 0,
                                    offset: Offset(0, 4))
                              ]
                          ),
                          height: 150,
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Description ",
                                  hintStyle: const TextStyle(
                                    fontFamily: poppinsRegular,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xff212529),
                                  )))),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildTextfield(hinttext) {
    return Container(
        padding: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: Color(0xffF8F8F8),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 7,
                  spreadRadius: 0,
                  offset: Offset(0, 4))
            ]),
        height: 45,
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
