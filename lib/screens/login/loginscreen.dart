import 'package:flutter/material.dart';
import 'package:rolodex/screens/login/siginin.dart';
import 'package:rolodex/widget/getText.dart';
import 'package:rolodex/utils/constants.dart';

import '../../widget/custombtn.dart';

class LoginInScreen extends StatefulWidget {
  const LoginInScreen({Key? key}) : super(key: key);
  @override
  State<LoginInScreen> createState() => _LoginInScreenState();
}
class _LoginInScreenState extends State<LoginInScreen> {
   TextEditingController emailController  = TextEditingController();
   TextEditingController passwordController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff25AAE1),
      body: Padding(
        padding: const EdgeInsets.only(left:16,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:40),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                 alignment: Alignment.center,
                 width: 40,
                 height: 40,
                 decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xffffffff),
                    width: 1,
                  )
                ),
                child: Image.asset("assets/images/arrow_forward.png",
                    width:16.67,height:16.67),
              ),
            ),
            const SizedBox(height:40),
            Center(child:getText("Log In", 24, FontWeight.w700, Colors.white ,poppinsRegular)),
            const SizedBox(height:20),
            Container(
                padding: const EdgeInsets.only(left:18,right:18,bottom: 71,top:18),
                decoration:BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(33),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                     // const SizedBox(height:18),
                      getText("Log in with one of the following options", 12, FontWeight.w700, Colors.black, poppinsRegular),
                      const SizedBox(height:17),
                      Container(
                        padding: const EdgeInsets.only(left:18,right:18),
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width:78,height: 54,
                                    decoration: BoxDecoration(
                                      color: kBtnColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Image.asset("assets/images/google.png",width: 23.59,height: 24.06,),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width:78,height: 54,
                                    decoration: BoxDecoration(
                                      color: kBtnColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Image.asset("assets/images/facebook.png",width: 23.59,height: 24.06,),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width:78,height: 54,
                                    decoration: BoxDecoration(
                                      color: kBtnColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Image.asset("assets/images/call.png",width: 23.59,height: 24.06,),
                                  ),
                                )
                              ]),
                        ),
                      const SizedBox(height:30),
                      getText("Email", 10, FontWeight.w700, const Color(0xff317BEF), poppinsRegular),
                      const SizedBox(height:11),
                      _buildTextField("Your email..", TextInputType.emailAddress, emailController,"assets/images/username.png"),
                      const SizedBox(height:16),
                      getText("Password", 10, FontWeight.w700,const Color(0xff317BEF), poppinsRegular),
                      const SizedBox(height:11),
                      _buildTextField("***********",TextInputType.visiblePassword,passwordController,"assets/images/lock.png"),
                      const SizedBox(height:20),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder:
                          (context)=>SignIn()
                          )
                          );
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            decoration:BoxDecoration(
                                color:Color(0xff25AAE1),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: Offset(4,0),
                                    color: Colors.black12,
                                  )
                                ]
                            ),
                            child: getText("Log In", 17, FontWeight.w700, Colors.white, poppinsMedium)
                        ),
                      ),
                      const SizedBox(height:16),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder:
                                  (context)=>SignIn()
                              )
                          );
                        },
                        child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            decoration:BoxDecoration(
                                color:const Color(0xff25AAE1),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const[
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: Offset(4,0),
                                    color: Colors.black12,
                                  )
                                ]),
                            child: getText("Sign Up", 17, FontWeight.w700, Colors.white, poppinsMedium)
                        ),
                      ),
                    ]),
              ),
            const Spacer(),
          ]),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

 Widget _buildTextField(hinttext,TextInputType keyboardtype, TextEditingController controller,imageUrl ){
    return Container(
      //padding: const EdgeInsets.only(left:12),
      height:43,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color:Color(0xff317BEF)
        ),
        // boxShadow: const[
        //   BoxShadow(
        //     blurRadius: 4,
        //     offset: Offset(0,4),
        //     color: Colors.black12
        //   )
        // ]
      ),
      child: TextField(

        controller: controller,
        keyboardType: keyboardtype,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 5),
          border: InputBorder.none,
          hintText: hinttext,
          hintStyle:  const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            fontFamily:poppinsRegular,
            color: Color(0xffAFAEBE)

          ),
          prefixIcon:Container(
            width:30,height:30,
            child: IconButton(
              onPressed: (){},
              icon: Image.asset(imageUrl,width:30,height:30,),
            ),
          )

        ),
      )
    );
 }

}
