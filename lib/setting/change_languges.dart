import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/Widget/elevated_button.dart';
import 'package:food_door/controller_helper.dart';
class CardPayment extends StatefulWidget {
  const CardPayment({Key? key}) : super(key: key);

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {

  bool _clicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ONLINE PAYMENT CARDS"), actions: [
        IconButton(onPressed: (){
          // addNewCart();
        }, icon: Icon(Icons.add))
      ],),
      body: ListView(
        children: [
          context.text(text: "Select the payment", size: 15, color: context.greyColor),
          Container(
            height:130.h ,
            width: 327.w,
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
            child:Column(
              children: [
                Row(children: [
                  Icon(Icons.circle ,color:Color( context.yellowColor),size: 24, ),
                Expanded(child:
                context.text(text: "Cash on Delevery", size: 16, color: context.greenColor ,wieght: FontWeight.w400)),
                  IconButton(onPressed: (){

                    // _clicked == true ? contenerView: false;
                  }, icon: Icon(Icons.check_circle_outline ,color:Color( context.greyColor),))
                ],),
                context.text(text: "Cash on Delevery Cash on Delevery Cash on Delevery Cash on Delevery",
                    size: 16, color: context.blackColor ,wieght: FontWeight.w200),


      ],) ,),
         Container(
           height:313.h ,
           width: 327.w,
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
           child:Column(
             children: [
               Row(children: [
                 Icon(Icons.food_bank_outlined ,color:Color( context.yellowColor),size: 24, ),
                 Expanded(child:
                 context.text(text: "Bank transfare", size: 16, color: context.greenColor ,wieght: FontWeight.w400)),
                 IconButton(onPressed: (){
                 }, icon: Icon(Icons.check_circle_outline ,color:Color( context.greenColor),))
               ],),
               context.text(text: "Cash on Delevery Cash on Delevery Cash on Delevery Cash on Delevery",
                   size: 16, color: context.blackColor ,wieght: FontWeight.w200)

             ],) ,
         ),

          Container(
            child: Row(
              children: [
                context.text(text: "total price", size: 16, color: context.blackColor ,wieght: FontWeight.w500),
                Spacer(),
                context.text(text: "150\$", size: 16, color: context.blackColor ,wieght: FontWeight.w500),

              ],
            ),
          ),
          elevatedButton(buttonText: "Contunio", padding: 20, onClick: (){
            Navigator.pushNamed(context, '/address');
          }, size: 55)
        ],
      ),
    );
  }

  // contenerView(){
  //   Container(
  //     height: 150.h,
  //     child: Column(
  //       children: [
  //         Row(children: [
  //           Icon(Icons.person ,color:Color( context.blackColor),size: 24, ),
  //           context.text(text: "malsa Badwan", size: 16, color:  context.blackColor ,wieght: FontWeight.w500)
  //         ],),
  //
  //         Row(children: [
  //           Icon(Icons.home_repair_service_outlined ,color:Color( context.blackColor),size: 24, ),
  //           context.text(text: "12598432", size: 16, color:  context.blackColor ,wieght: FontWeight.w500)
  //         ],),
  //
  //         Row(children: [
  //           Icon(Icons.location_on_outlined ,color:Color( context.blackColor),size: 24, ),
  //           context.text(text: "Gaza", size: 16, color:  context.blackColor ,wieght: FontWeight.w500)
  //         ],),
  //       ],
  //     ),
  //   );
  // }
  // addNewCart(){
  //
  // }
}
