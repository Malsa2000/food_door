import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/Widget/text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller_helper.dart';
import '../../models/city.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _mabileController;

  late TextEditingController _passwordController;

  late TextEditingController _nameController;

  String? _nameErorr;

  String? _mobileErorr;

  String? _passwordErorr;

  String? _gender;

  List<City> city = <City>[
    City(id: 1, name: "Gaza"),
    City(id: 2, name: "Nables"),
    City(id: 3, name: "Ramalla"),
    City(id: 4, name: "Aled"),
  ];
  int? _select;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mabileController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _mabileController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(context.greenColor),

      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                  width: 347.w,
                  height: 760.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.black45,
                            blurRadius: 5)
                      ],
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          context.text(
                              text: "Sing up",
                              size: 25,
                              color: context.greenColor,
                              wieght: FontWeight.w400),
                          context.text(
                              text: context.localizations.food_door,
                              size: 20,
                              color: context.yellowColor,
                              wieght: FontWeight.w400),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      context.text(
                          text: "Enter full Name!",
                          size: 14,
                          color: context.blackColor,
                          wieght: FontWeight.w200),
                      text_field(
                        controller: _nameController,
                        errorText1: _nameErorr,
                        keybord: TextInputType.text,
                        prefexIcon: Icons.title,
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      context.text(
                          text: "Enter The Phone Number!",
                          size: 14,
                          color: context.blackColor,
                          wieght: FontWeight.w200),
                      text_field(
                        controller: _mabileController,
                        errorText1: _mobileErorr,
                        keybord: TextInputType.number,
                        prefexIcon: Icons.numbers,
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      context.text(
                          text: "Enter The Password Number!",
                          size: 14,
                          color: context.blackColor,
                          wieght: FontWeight.w200),
                      text_field(
                        controller: _passwordController,
                        errorText1: _passwordErorr,
                        keybord: TextInputType.text,
                        icon: Icons.visibility_outlined,
                        obsecure: true,
                        prefexIcon: Icons.security,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      context.text(
                          text: "Select Gender!",
                          size: 14,
                          color: context.blackColor,
                          wieght: FontWeight.w200),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RadioListTile(
                                title: context.text(
                                    text: "Femeal",
                                    size: 14,
                                    color: context.blackColor,
                                    wieght: FontWeight.w300 ,align: TextAlign.start),
                                value: 'f',
                                activeColor: Color(context.greenColor),
                                groupValue: _gender,
                                onChanged: (String? value) {
                                  setState(() => _gender = value);
                                }),
                          ),
                          Expanded(
                            child: RadioListTile(
                                title: context.text(
                                    text: "Meal",
                                    size: 14,
                                    color: context.blackColor,
                                    wieght: FontWeight.w300 ,align: TextAlign.start),
                                value: 'm',
                                activeColor: Color(context.greenColor),
                                groupValue: _gender,
                                onChanged: (String? value) {
                                  setState(() => _gender = value);
                                }),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      context.text(
                          text: "Select your City!",
                          size: 14,
                          color: context.blackColor,
                          wieght: FontWeight.w200),


                      DropdownButton<int>(
                          icon: const Icon(Icons.location_city ,color: Colors.black),
                          isExpanded: true,
                          hint: const Text("City..."),
                          style: GoogleFonts.ultra(fontSize: 13 ,fontWeight: FontWeight.w300 ,color:Color( context.greenColor)),
                          value: _select ,
                          onChanged: (int? vlaue) {
                            setState(() => _select = vlaue);
                          },
                          items: city.map((City) => DropdownMenuItem<int>(
                            child: Text(City.name),
                            value: City.id  ,
                          ))
                              .toList()),
                      SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: () {
                          performLogin();
                        },
                        child: context.text(
                            text: "Contiune", size: 16, color: (0xFFFFFFFF)),
                        style: ElevatedButton.styleFrom(
                          primary: Color(context.yellowColor),
                          minimumSize: Size(340.w, 60.h),
                          elevation: 2,
                          alignment: AlignmentDirectional.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  context.text(
                      text: "Alrady have an Account",
                      size: 14,
                      color: context.greyColor,
                      wieght: FontWeight.w200),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/Login');
                    },
                    child: context.text(
                        text: "SignIn",
                        size: 14,
                        color: context.yellowColor,
                        wieght: FontWeight.w400),
                  )
                ],
              )
            ]),
      ),
    );
  }

  void performLogin() {
    if (checkLogin()) {
      login();
    }
  }

  bool checkLogin() {
    checkTextFiled1();
    if (_mabileController.text.isNotEmpty &&
        _nameController.text.isNotEmpty &&
        _gender != null &&
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
          _mabileController.text.isEmpty ? 'Enter Mobile number' : null;
      _passwordErorr = _passwordController.text.isEmpty ? 'Enter pass' : null;
    });
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/veryfied_code');
  }
}
