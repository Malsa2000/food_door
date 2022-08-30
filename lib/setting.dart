import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {

  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  String _languges = "en";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10 ,horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Color(context.wihteColor),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black45,
                    blurRadius: 5)
              ],),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {
                    _showLangugesBottomSheet(context);
                  },
                  title: context.text(text: "languges",
                      size: 16,
                      color: context.greenColor,
                      wieght: FontWeight.w200),
                  subtitle: context.text(text: "change languges",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                    Icons.language, color: Color(context.yellowColor),),
                  trailing: Icon(Icons.send_rounded),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/faqs');
                  },
                  title: context.text(
                      text: "FQAs", size: 16, color: context.greenColor ,wieght: FontWeight.w200),
                  subtitle: context.text(
                      text: "Qustion/answer about applcation",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                    Icons.question_answer, color: Color(context.yellowColor),),
                  trailing: Icon(Icons.send_rounded),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/change_languges');
                  },
                  title: context.text(text: "card payment",
                      size: 16,
                      color: context.greenColor ,wieght: FontWeight.w200),
                  subtitle: context.text(text: "methode for payment",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                    Icons.money, color: Color(context.yellowColor),),
                  trailing: Icon(Icons.send_rounded),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/address');
                  },
                  title: context.text(
                      text: "Address", size: 16, color: context.greenColor ,wieght: FontWeight.w200),
                  subtitle: context.text(text: "user adress",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(Icons.location_on_outlined,
                    color: Color(context.yellowColor),),
                  trailing: Icon(Icons.send_rounded),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/myAccount');
                  },
                  title: context.text(
                      text: "Profile", size: 16, color: context.greenColor ,wieght: FontWeight.w200),
                  subtitle: context.text(text: "update user Profile",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                    Icons.person, color: Color(context.yellowColor),),
                  trailing: Icon(Icons.send_rounded),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/reset_new_pass');
                  },
                  title: context.text(text: "Change Password",
                      size: 16,
                      color: context.greenColor ,wieght: FontWeight.w200),
                  subtitle: context.text(text: "convert the password app",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                    Icons.password, color: Color(context.yellowColor),),
                  trailing: Icon(Icons.send_rounded),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/order');
                  },
                  title: context.text(
                      text: "Log Out", size: 16, color: context.greenColor ,wieght: FontWeight.w200),
                  subtitle: context.text(text: "logout",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                      Icons.logout_outlined, color: Color(context.yellowColor)),
                  trailing: Icon(Icons.send_rounded),
                ),
              ],),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10 ,horizontal: 20),

            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Color(context.wihteColor),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black45,
                    blurRadius: 5)
              ],),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                context.text(
                    text: "Contect us", size: 16, color: context.greenColor),
                ListTile(
                  title: context.text(text: "Mobil Nmuber",
                      size: 14,
                      color: context.greenColor,
                      wieght: FontWeight.w400),
                  subtitle: context.text(text: "+123 -123598452",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(Icons.call, color: Colors.green, size: 16,),
                ),
                ListTile(
                  title: context.text(text: "FaceBook Account",
                      size: 14,
                      color: context.greenColor,
                      wieght: FontWeight.w400),
                  subtitle: context.text(text: "malsa Badwan",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                    Icons.facebook, color: Colors.blueAccent, size: 16,),
                ),
                ListTile(
                  title: context.text(text: "Gmail",
                      size: 14,
                      color: context.greenColor,
                      wieght: FontWeight.w400),
                  subtitle: context.text(text: "malsa@gmail.com",
                      size: 12,
                      color: context.blackColor,
                      wieght: FontWeight.w200),
                  leading: Icon(
                    Icons.alternate_email_outlined, color: Colors.red,
                    size: 16,),
                ),
              ],),
          ),
          SizedBox(height: 20,),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Color(context.wihteColor),
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      color: Colors.black45,
                      blurRadius: 5)
                ],),
              child:
              Column(children: [

              ],)
          )


        ],
      ),
    );
  }

  void _showLangugesBottomSheet(BuildContext context) async {
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
