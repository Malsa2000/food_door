import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/Widget/elevated_button.dart';
import 'package:food_door/Widget/text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller_helper.dart';
import '../../provider/languge_provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  String _languges = "en";
  String? _mobileErorr;

  String? _passwordErorr;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(context.greenColor),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children:[
            SizedBox(height: 100,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
              width: 347.w,
              height: 490.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2), color: Colors.black45, blurRadius: 5)],
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  context.text(
                      text: context.localizations.sing_in,
                      size: 30,
                      color: context.greenColor,
                      wieght: FontWeight.w400),
                  context.text(
                      text: context.localizations.food_door,
                      size: 28,
                      color: context.yellowColor,
                      wieght: FontWeight.w400),
                  SizedBox(
                    height: 20,
                  ),

                  context.text(
                      text: "Enter The Phone Number or Email!",
                      size: 14,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  text_field(
                    controller: _emailController,
                    errorText1: _mobileErorr,
                    keybord: TextInputType.number,
                  ),
                  SizedBox(height: 20,),
                  context.text(
                      text: "Enter The Password Number!",
                      size: 14,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  text_field(
                      controller: _passwordController,
                      errorText1: _passwordErorr,
                      keybord: TextInputType.text,
                      obsecure: true
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                    TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/forget_pass');
                      }, child:
                      context.text(
                          text: "Forget Password",
                          size: 14,
                          color: context.greenColor,
                          wieght: FontWeight.w500),
                    )
                    ],
                  ),

                  ElevatedButton(
                    onPressed: () {
                    performLogin();
                    },
                    child: context.text(
                        text: "Contiune", size: 16, color: (0xFFFFFFFF)),
                    style: ElevatedButton.styleFrom(
                      primary: Color(context.yellowColor),
                      minimumSize: Size(291.w, 44.h),
                      maximumSize: Size(291.w, 44.h),
                      elevation: 2,
                      alignment: AlignmentDirectional.center,
                      padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
                    ),
                  ),

                ],
              )),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              context.text(text: "Dont'n have an Account", size: 14, color: context.wihteColor ,wieght: FontWeight.w400),
              TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, '/SignUp');
              }, child:context.text(text: "SignUp", size: 16, color: context.yellowColor ,wieght: FontWeight.w500),
              )
            ],)
     ] ),
      ),
    );
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    checkTextFiled1();
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      return true;
    }
    checkTextFiled1();
    context.snackBar(massage: "enter the value", error: true);
    return false;
  }

  void checkTextFiled1() {
    setState(() {
      _mobileErorr =
          _emailController.text.isEmpty ? 'Enter Mobile number' : null;
      _passwordErorr = _passwordController.text.isEmpty ? 'Enter pass' : null;
    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/bot');
  }

  void _showLangugesBottomSheet() async {
    String? lanCode = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return BottomSheet(
                  onClosing: () {},
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          context.localizations.languges,
                          style: GoogleFonts.cairo(
                              fontSize: 18, color: Color(context.yellowColor)),
                        ),
                        Text(
                          context.localizations.login,
                          style: GoogleFonts.cairo(
                              fontSize: 18, color: Color(context.greenColor)),
                        ),
                        Divider(),
                        RadioListTile<String>(
                            title: Text("ar"),
                            value: "ar",
                            groupValue: _languges,
                            activeColor: Color(context.yellowColor),
                            onChanged: (String? value) {
                              if (value != null) {

                                setState(() => _languges = value);
                                Navigator.pop(context);
                              }
                            }),
                        RadioListTile<String>(
                            title: Text("en"),
                            value: "en",
                            activeColor: Color(context.yellowColor),
                            groupValue: _languges,
                            onChanged: (String? value) {
                              if (value != null) {
                                setState(() => _languges = value);
                                Navigator.pop(context);
                              }
                            }),
                      ],
                    );
                  });
            },
          );
        });
    if (lanCode != null) {
    //  Provider.of<LangugesProvider>(context, listen: false).changLanguges();
    }
  }
}
