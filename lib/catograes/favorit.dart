import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/Widget/cart_item.dart';
import 'package:food_door/controller_helper.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product.dart';

class Favorit extends StatefulWidget {
  const Favorit({Key? key}) : super(key: key);

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {

  double _rate  = 0;
  List<String> _image =<String>['paper' ,'paper2' ,'paper3' ,'paper'];
  List<String> _title =<String>['yaneel' ,'yasmeen' ,'papery' ,'zanonu'];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10 ),
            padding: EdgeInsets.symmetric(horizontal: 10 ,vertical: 20 ),
            alignment: Alignment.center,
            width: 350.w,
            height: 150.h,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      color: Colors.black45,
                      blurRadius: 5)
                ],
            borderRadius: BorderRadius.circular(10.r)),

            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage("images/${_image[index]}.png"),
                        alignment: Alignment.center,
                        height: 60.h,
                        width: 60.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          context.text(
                              text:_title[index],
                              size: 18,
                              color: (context.greenColor),
                              wieght: FontWeight.w400),

                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              context.text(
                                  text:"Rating     : ${_rate.toString()}",
                                  size: 14,
                                  color: (context.blackColor),
                                  wieght: FontWeight.w300),
                              Container(
                                height: 8,
                                width: 120.w,
                                child: RatingBar.builder(
                                  initialRating: 2,
                                  minRating: 1,
                                  itemSize: 10.0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal:0.5),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    setState(()=>_rate =rating);
                                  },),
                              ),
                            ],),
                          context.text(
                              text: "Discount code 10\$",
                              size: 12,
                              color: (context.blackColor),
                              wieght: FontWeight.w600),
                          context.text(
                              text: "400 point",
                              size: 14,
                              color: (context.yellowColor),
                              wieght: FontWeight.w500),
                        ],
                      )


                    ],
                  ),
                ],
              ),
            ),
          );
        });

  }
}
