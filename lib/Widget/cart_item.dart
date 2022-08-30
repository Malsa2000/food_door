import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';

class card_item extends StatelessWidget {
  final String image ,text;
  const card_item({


    Key? key,
    required this.text,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: (){
          Navigator.pushReplacementNamed(context, '/Item');
        },
        child: Container(
          width: 155.w,
          height: 200.h,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black45,
                    blurRadius: 5)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_sharp,
                        color: Color(context.greenColor), size: 12),
                    context.text(
                        text: "Amireca", size: 12, color: (context.greenColor) ,wieght: FontWeight.w500),
                    Spacer(),
                    Container(
                      width: 36.w,
                      height: 36.h,
                      child: IconButton(
                        icon: Icon(Icons.favorite_border,
                            color: Color(context.yellowColor), size: 16),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/Favorit');
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Image(
                    width: 102.w,
                    height: 81.h,
                    fit: BoxFit.contain,
                    image: AssetImage("$image"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.text(
                        text: "$text", size: 16, color: (context.greenColor)),
                    Spacer(),
                    context.text(
                        text: "50\$", size: 16, color: (context.blackColor)),
                  ],
                ),
                context.text(
                    text: "10Kg", size: 12, color: (context.blackColor) ,wieght: FontWeight.w300),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


