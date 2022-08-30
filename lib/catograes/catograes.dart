import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/catograes/sub_catog.dart';
import 'package:food_door/controller_helper.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);
  List<int> _color = <int>[
    (0xFF89E2FE),
    (0xFFF6BDAC),
    (0xFFF7D96F),
    (0xFFBBAFFE),
    (0xFFF5B888),
    (0xFF89E2FE),
  ];
  List<String> _title = <String>[
    "fish", "vegetable",
    "meat",
    "lettuce",
    "bread",
    "harvest",
    "lettuce",
    "bread",
    "harvest",

  ];
  List<String> _image = <String>[
    "fish1",
    "vegetable",
    "meat",
    "lettuce",
    "bread",
    "harvest",
    "lettuce",
    "bread",
    "harvest",
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 60),
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              childAspectRatio: 120 / 80),
          itemCount: 9,
          itemBuilder: (context, index) {
            return  InkWell(

              onTap: (){
                Navigator.pushNamed(context, "/AllCatogres");
              },
              child: Container(
                alignment: Alignment.topCenter,
                 decoration: BoxDecoration(
                   color: Color(context.greenColor),
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
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                   Expanded(
                     child: Image(
                           height: 80.h,
                           width: 70.w,
                           image: AssetImage("images/${_image[index]}.png"),
                         ),
                   ),
                   context.text(
                       text:_title[index],
                       size: 14,
                       color: context.wihteColor,
                       wieght: FontWeight.w400),


                 ],),


              ),
            );
          });

  }

  void _navigator(int index, BuildContext context, String title) {
    Navigator.pushNamed(context, "/AllCatogres" ,arguments: {
     'itemSelected' : title
    });
  }
}
