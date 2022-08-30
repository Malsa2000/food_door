import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        title :Text("Order"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.phone_android),)
        ],
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          children :[
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/order_detiles');
            },
            child: Container(
            height:300.h,
            width: 327.w,
            padding: EdgeInsets.symmetric(vertical: 15 ,horizontal: 10),
            decoration: BoxDecoration(
              color: Color(context.wihteColor),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black45,
                    blurRadius: 5)],),
            child: Column(
              children: [
                Row(children: [
                  Icon(Icons.emoji_food_beverage_sharp ,color:Color( context.greenColor) ,),
                  context.text(text: context.localizations.food_door, size: 12, color: context.greenColor)
                ],),
                Divider(height: 1,color:Color( context.greyColor), thickness: 2,),
                SizedBox(height: 10,),
                Row(
                  children: [
                  context.text(text: "Order #123648", size: 14, color: context.blackColor ,wieght: FontWeight.w400),
                  Spacer(),
                  context.text(text: "14/7/2055", size: 14, color: context.blackColor ,wieght: FontWeight.w200),


                ],),
                SizedBox(height: 10,),
                Row(children: [
                  context.text(text: "State", size: 12, color: context.blackColor ,wieght: FontWeight.w400),
                  context.text(text: "Waite", size: 14, color: context.greenColor ,wieght: FontWeight.w200)
                ],),
                SizedBox(height: 10,),
                Row(children: [
                  context.text(text: "oranges : 500 Kg ,", size: 14, color: context.blackColor ,wieght: FontWeight.w400),
                  context.text(text: " potatos : 700 Kg ,", size: 14, color: context.blackColor ,wieght: FontWeight.w200),
                  context.text(text: "carty: 50 Kg  ,", size: 14, color: context.blackColor ,wieght: FontWeight.w200),
                ],),
                SizedBox(height: 10,),
                Row(children: [
                  context.text(text: "payment Type", size: 14, color: context.blackColor ,wieght: FontWeight.w400),
                  context.text(text: "Bank", size: 14, color: context.greenColor ,wieght: FontWeight.w300),
                ],),

                Divider(height: 1,color:Color( context.greyColor), thickness: 2,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 20),
                  child: Row(
                    children: [
                    context.text(text: "total", size: 16, color: context.blackColor ,wieght: FontWeight.w400),
                    Spacer(),
                    context.text(text: "160\$", size: 16, color: context.greenColor ,wieght: FontWeight.w600),]
                  ),
                )

              ],
            ) ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/order_detiles');
            },
            child: Container(
                height:300.h,
                width: 327.w,
                padding: EdgeInsets.symmetric(vertical: 15 ,horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(context.wihteColor),
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.black45,
                        blurRadius: 5)],),
                child: Column(
                  children: [
                    Row(children: [
                      Icon(Icons.emoji_food_beverage_sharp ,color:Color( context.greenColor) ,),
                      context.text(text: context.localizations.food_door, size: 12, color: context.greenColor)
                    ],),
                    Divider(height: 1,color:Color( context.greyColor), thickness: 2,),
                    SizedBox(height: 10,),
                    Row(children: [
                      context.text(text: "Order #648", size: 14, color: context.blackColor ,wieght: FontWeight.w400),
                      Spacer(),
                      context.text(text: "6/7/2012", size: 14, color: context.blackColor ,wieght: FontWeight.w200),
                    ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      context.text(text: "State", size: 12, color: context.blackColor ,wieght: FontWeight.w400),
                      context.text(text: "avalible", size: 14, color: context.greenColor ,wieght: FontWeight.w200)
                    ],),
                    SizedBox(height: 10,),

                    Row(children: [
                      context.text(text: "payment Type", size: 14, color: context.blackColor ,wieght: FontWeight.w400),
                      context.text(text: "Bank", size: 14, color: context.greenColor ,wieght: FontWeight.w300),
                    ],),
                    SizedBox(height: 10,),
                    Row(children: [
                      context.text(text: "potatos : 600 Kg ,", size: 14, color: context.blackColor ,wieght: FontWeight.w400),
                      context.text(text: " potatos : 700 Kg ,", size: 14, color: context.blackColor ,wieght: FontWeight.w200),
                    ],),
                    SizedBox(height: 10,),
                    Divider(height: 1,color:Color( context.greyColor), thickness: 2,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),

                      child: Row(
                          children: [
                            context.text(text: "total", size: 16, color: context.blackColor ,wieght: FontWeight.w400),
                          Spacer(),
                            context.text(text: "50\$", size: 16, color: context.greenColor ,wieght: FontWeight.w600),]
                      ),
                    )

                  ],
                ) ),
          ),

        ]
      )
    );
  }
}

