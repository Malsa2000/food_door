import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';

import '../Widget/cart_item.dart';

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int _index = 0;
  int _number = 0;
  double _rate_vlaue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(context.wihteColor),
        title: context.text(
            text: "Product Details", size: 18, color: context.blackColor),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              }),
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined ),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              }),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),

        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Favorit');
                  },
                  icon: Icon(Icons.food_bank_outlined,
                      size: 24,
                      color: Color(
                        context.greenColor,
                      ))),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/order');
                  },
                  icon: Icon(Icons.favorite,
                      size: 24,
                      color: Color(
                        context.greenColor,
                      )))
            ],),
          Container(
            height:210.h,
            width: 250.w,
            decoration: BoxDecoration(
              color: Color(context.wihteColor),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black45,
                    blurRadius: 5)],),
            child: Image(
              alignment: Alignment.topCenter,
              image: AssetImage("images/paper.png"),
              height: 210.h,
              width: 250.w,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
              height:100.h,
              width: 250.w,
              decoration: BoxDecoration(
                color: Color(context.wihteColor),
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      color: Colors.black45,
                      blurRadius: 5)],),
              child:
              Row(
                children: [
                  context.text(
                      text: "paper",
                      size: 18,
                      color: context.greenColor,
                      wieght: FontWeight.w500),
                  Spacer(),
                  context.text(
                      text: "3\$game",
                      size: 13,
                      color: context.blackColor,
                      wieght: FontWeight.w300),
                ],
              ),

          ),
          SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
            height:100.h,
            width: 250.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(context.wihteColor),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black45,
                    blurRadius: 5)],),
            child: context.text(
                text: context.localizations.description,
                size: 15,
                color: context.blackColor,
                wieght: FontWeight.w300),
          ),
          SizedBox(height: 5,),
           Container(
        padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
        height:100.h,
        width: 250.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(context.wihteColor),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                color: Colors.black45,
                blurRadius: 5)],),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
          context.text(
                    text: "Rate product :",
                    size: 14,
                    color: context.blackColor,
                    wieght: FontWeight.w300),
                Row(children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                            height: 20,
                            width: 250.w,
                            child: RatingBar.builder(
                              initialRating: 2,
                              minRating: 1,
                              itemSize: 15.0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (double rating) {
                                setState(()=> _rate_vlaue = rating);
                              },
                            ),),
                  context.text(
                      text: _rate_vlaue.toString(),
                      size: 16,
                      color: context.blackColor,
                      wieght: FontWeight.w500),
                ]),
        ],)
      ),
           SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 10),
            height:130.h,
            width: 250.w,
            decoration: BoxDecoration(
              color: Color(context.wihteColor),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black45,
                    blurRadius: 5)],),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                context.text(
                    text: "Chooes Weight",
                    size: 14,
                    color: context.blackColor,
                    wieght: FontWeight.w300),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _index = 0;
                      },
                      style: ElevatedButton.styleFrom(
                          primary:
                          _index == 0 ? Color(0xFF00AD8F) : Color(0xFFF8F9FA),
                          minimumSize: Size(80.w, 50.h)),
                      child: context.text(
                          text: "15K",
                          size: 15,
                          color: context.blackColor,
                          wieght: FontWeight.w500),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _index = 1;
                      },
                      style: ElevatedButton.styleFrom(
                          primary:
                          _index == 1 ? Color(0xFF00AD8F) : Color(0xFFF8F9FA),
                          minimumSize: Size(80.w, 50.h)),
                      child: context.text(
                          text: "19K",
                          size: 15,
                          color: context.blackColor,
                          wieght: FontWeight.w500),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _index = 2;
                      },
                      style: ElevatedButton.styleFrom(
                          primary:
                          _index == 2 ? Color(0xFF00AD8F) : Color(0xFFF8F9FA),
                          minimumSize: Size(80.w, 50.h)),
                      child: context.text(
                          text: "30K",
                          size: 15,
                          color: context.blackColor,
                          wieght: FontWeight.w500),
                    ),
                  ],
                ),
            ],),
          ),
          SizedBox(height: 5,),
          Container(
        padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 10),
        height:130.h,
        width: 250.w,
        decoration: BoxDecoration(
          color: Color(context.wihteColor),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                color: Colors.black45,
                blurRadius: 5)],),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.text(
                text: "Chooes Quantity",
                size: 14,
                color: context.blackColor,
                wieght: FontWeight.w300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() => _number++);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(context.greenColor), minimumSize: Size(100.w, 50.h)),
                  child: context.text(
                      text: "+",
                      size: 14,
                      color: context.blackColor,
                      wieght: FontWeight.w700),
                ),
                context.text(
                    text: _number.toString(),
                    size: 14,
                    color: context.blackColor,
                    wieght: FontWeight.w700),
                ElevatedButton(
                  onPressed: () {
                    setState(() => _number--);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(context.greenColor), minimumSize: Size(100.w, 50.h)),
                  child: context.text(
                      text: "-",
                      size: 14,
                      color: context.blackColor,
                      wieght: FontWeight.w700),
                ),
              ],
            ),
        ],),
      ),

         SizedBox(height: 20,),
          Container(alignment: Alignment.centerLeft,
           child: context.text(
               text: "See More item",
               size: 14,
               color: context.blackColor,
               wieght: FontWeight.w300),),


             ConstrainedBox(
               constraints: BoxConstraints(maxHeight: 300 ,maxWidth: double.infinity),
               child:ListView(
                 semanticChildCount: 2,
                    scrollDirection: Axis.horizontal,
                    children: [
                      card_item(text: "fish", image: "images/fish1.png"),
                      card_item(text: "paper", image: "images/paper.png"),
                      card_item(text: "meat", image: "images/item_meat.png"),
                      card_item(text: "fish", image: "images/veg.png"),
                    ],


                ),
          ),


        ],
      ),
    );
  }
}
