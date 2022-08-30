
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/Widget/elevated_button.dart';
import 'package:food_door/controller_helper.dart';

import 'favorit.dart';
class SubCategories extends StatelessWidget {

   SubCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color( context.wihteColor),
        title: context.text(text: "title", size: 18, color: context.blackColor),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: (){
          Navigator.pushNamed(context , '/Home');
        }),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){
            Navigator.pop(context);
          }),
          IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: (){
            Navigator.pop(context);
          }),
        ],

      ),
      body:ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              width: 319.w,
              height: 134.h,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.black45,
                        blurRadius: 5)],
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                        Image(
                          image: AssetImage("images/item_meat.png"),
                          alignment: Alignment.center,
                          fit: BoxFit.fitHeight,
                          height: 100.h,
                          width: 86.w,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Row(children: [
                          context.text(
                              text: "pumicking",
                              size: 14,
                              color: (context.greenColor),
                              wieght: FontWeight.w400),
                          Spacer(),
                          IconButton(onPressed: (){

                            _addFavorit("text" ,"name" ,"price" ,context);

                          }, icon: Icon(Icons.favorite_border ,color: Color(context.blackColor), size: 15,))
                        ],),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            context.text(
                                text: "Rate the Item",
                                size: 12,
                                color: (context.greyColor),
                                wieght: FontWeight.w300),
                            Container(
                              height: 8,
                              width: 36.w,
                              child: RatingBar.builder(
                                initialRating: 2,
                                minRating: 1,
                                itemSize: 15.0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal:0.5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },),
                            ),
                          ],),
                        context.text(
                            text: "3",
                            size: 12,
                            color: (context.blackColor),
                            wieght: FontWeight.w700),
                        context.text(
                            text: "/400 point",
                            size: 12,
                            color: (context.blackColor),
                            wieght: FontWeight.w400),
                        elevatedButton(buttonText: "Add To Cart", padding: 20, onClick: (){
                          Navigator.pushNamed(context, '/Item');
                        }, size: 32)
                      ],),

                  ],),
            ]
            )
            ));


          })





    );
  }

  void _addFavorit(String name ,String image ,String price ,BuildContext context) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Favorit()));
  }
}
