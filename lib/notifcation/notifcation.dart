import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';
class Notfcations extends StatelessWidget {

   Notfcations({Key? key}) : super(key: key);

  List<int> _color = <int>[
    (0xFF89E2FE),
    (0xFFF6BDAC),
    (0xFFF7D96F),
    (0xFFBBAFFE),
    (0xFFF5B888),
  ];

   List<int> _title = <int>[
     (0xFF89E2FE),
     (0xFFF6BDAC),
     (0xFFF7D96F),
     (0xFFBBAFFE),
     (0xFFF5B888),
   ];

  List<IconData> _icon = <IconData>[
   Icons.call,
   Icons.laptop,
   Icons.add_alarm_sharp,
   Icons.online_prediction_rounded,
   Icons.add_box_outlined
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notfcations"),),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 10),

          itemCount: 5,
          itemBuilder: (context ,index){
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 10),
          alignment: Alignment.center,
          height: 100.h,
          width: 300.w,
          decoration: BoxDecoration(
            color: Color(_color[index]),
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.black45,
                  blurRadius: 5)
            ],
          ),
        child: Row(
          children: [
            Icon(_icon[index] ,size: 16,),
            Column(children: [
              context.text(text: "Notfiy", size: 16, color: context.blackColor ,wieght: FontWeight.w300),
              context.text(text: "welcom in appplactiom so you can add or delets", size: 12, color: context.blackColor ,wieght: FontWeight.w200),
              context.text(text: "14/2/600", size: 13, color: context.blackColor ,wieght: FontWeight.w200),

            ],)

          ],
        ),

        );
      })
    );
  }
}
