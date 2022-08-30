import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _value = 0;
  int _value2 = 0;

  List<String> _image = <String>[
    "paper", "paper2" ,"paper3"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 300.w,
            height: 122.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),),
                color: Color(context.wihteColor),
                boxShadow: [BoxShadow(offset: Offset(0, 2), color: Colors.black45, blurRadius: 5)],),
            child: Padding(
              padding: EdgeInsets.only(right: 10 ,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 80.w,
                    height: 106.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),),
                      color: Color(context.wihteColor),
                      boxShadow: [BoxShadow(offset: Offset(0, 2), color: Colors.black45, blurRadius: 5)],),
                  child: Image(
                    image: AssetImage("images/${_image[index]}.png"),
                    height: 41.h,
                    width: 55.w,
                    alignment: Alignment.center,
                  ),

                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        context.text(
                            text: "\$20",
                            size: 16,
                            color: context.greenColor,
                            wieght: FontWeight.w400),
                        Spacer(),
                        IconButton(icon: Icon(Icons.check_circle ,color: Color(context.greenColor),), onPressed: (){},)
                      ],),
                      Row(children: [
                        context.text(
                            text: "Orange",
                            size: 14,
                            color: context.blackColor,
                            wieght: FontWeight.w300),
                      ],),
                      Container(alignment: Alignment.bottomRight,
                        child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(context.greenColor),
                                minimumSize: Size(26.w, 26.h)),
                            onPressed: () {
                              setState(() => _value++);
                            },
                            child: context.text(
                                text: "+",
                                size: 18,
                                color: context.wihteColor,
                                wieght: FontWeight.w400),
                          ),
                          context.text(
                              text: _value.toString(), size: 18, color: context.blackColor),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(context.greenColor),
                                minimumSize: Size(26.w, 26.h)),
                            onPressed: () {
                              setState(() => _value2--);
                            },
                            child: context.text(
                                text: "-",
                                size: 18,
                                color: context.wihteColor,
                                wieght: FontWeight.w400),
                          ),
                        ],
                      ))


                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
