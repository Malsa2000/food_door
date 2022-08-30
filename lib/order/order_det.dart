import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';

class OrderDetiles extends StatefulWidget {
  const OrderDetiles({Key? key}) : super(key: key);

  @override
  State<OrderDetiles> createState() => _OrderDetilesState();
}

class _OrderDetilesState extends State<OrderDetiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Detiles"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        children: [
          Container(
              width: 327.w,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(context.wihteColor),
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      color: Colors.black45,
                      blurRadius: 5)
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(children: [
                    Icon(Icons.timelapse ,color:Color( context.greenColor),size: 16,),
                    context.text(text: "order number", size: 16, color: context.greenColor ,wieght: FontWeight.w400)
                    , Spacer(),
                    context.text(text: "#1236487", size: 14, color: context.blackColor ,wieght: FontWeight.w400)
                  ],),
                  SizedBox(height: 20,),
                  Row(children: [
                    Icon(Icons.date_range_rounded ,color:Color( context.greenColor),size: 16,),
                    context.text(text: "Oreder Dtae", size: 16, color: context.greenColor ,wieght: FontWeight.w400)
                    , Spacer(),
                    context.text(text: "14/5/2022", size: 14, color: context.blackColor ,wieght: FontWeight.w400)
                  ],),
                  SizedBox(height: 20,),
                  Row(children: [
                    Icon(Icons.nest_cam_wired_stand ,color:Color( context.greenColor),size: 16,),
                    context.text(text: "name", size: 16, color: context.greenColor ,wieght: FontWeight.w400)
                    , Spacer(),
                    context.text(text: "Order201", size: 14, color: context.blackColor ,wieght: FontWeight.w400)
                  ],),
                  SizedBox(height: 20,),
                  Row(children: [
                    Icon(Icons.real_estate_agent ,color:Color( context.greenColor),size: 16,),
                    context.text(text: "State", size: 16, color: context.greenColor ,wieght: FontWeight.w400),
                    Spacer(),
                    context.text(text: "Waite", size: 14, color: context.blackColor ,wieght: FontWeight.w400)
                  ],),
                  SizedBox(height: 20,),
                  Row(children: [
                    context.text(text: "orders Progucs", size: 16, color: context.greenColor ,wieght: FontWeight.w500),
                    Spacer(),
                  ],),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child:
                    Column(
                      children: [
                      Row(children: [
                        Image(image: AssetImage("images/paper2.png"),height: 50, width: 50,),
                        context.text(text: "potato", size: 14, color: context.blackColor ,wieght: FontWeight.w400),
                        context.text(text: "1Kg", size: 14, color: context.greenColor ,wieght: FontWeight.w200),
                      ],),
                      Row(children: [
                        Image(image: AssetImage("images/item_meat.png"),height: 50, width: 50,),
                        context.text(text: "fish", size: 12, color: context.blackColor ,wieght: FontWeight.w400),
                        context.text(text: "20kg", size: 14, color: context.greenColor ,wieght: FontWeight.w200)
                      ],),
                      Row(children: [
                        Image(image: AssetImage("images/paper.png"),height: 50, width: 50,),
                        context.text(text: "meat", size: 12, color: context.blackColor ,wieght: FontWeight.w400),
                        context.text(text: "150kg", size: 14, color: context.greenColor ,wieght: FontWeight.w200)
                      ],),

                    ],),

                  ),
                ],
              ))
        ],
      ),
    );
  }
}
