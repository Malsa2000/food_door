import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/Widget/elevated_button.dart';
import 'package:food_door/Widget/text_field.dart';
import 'package:food_door/controller_helper.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/city.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool _clicked = false;
  int? _select;
late  TextEditingController _nameController;
  late  TextEditingController _teltephoneController;
  late  TextEditingController _adddresController;
  List<City> city = <City>[
    City(id: 1, name: "Gaza"),
    City(id: 2, name: "Nables"),
    City(id: 3, name: "Ramalla"),
    City(id: 4, name: "Aled"),
  ];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController =TextEditingController();
  _teltephoneController =TextEditingController();
    _adddresController =TextEditingController();

}

  @override
  void dispose() {
  _nameController.dispose();
  _teltephoneController.dispose();
  _adddresController.dispose();
  super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal:63 ,vertical: 28),
          height: 40.h,
          width: 40.w,
          color: _clicked ==true ? Color(context.greenColor) : Color(context.greyColor) ,
          child: IconButton(onPressed: (){
            setState(()=>_clicked =true);

          }, icon: Icon(Icons.location_on_outlined),),
        ),

        Container(
          alignment: Alignment.center,
          height: 292.h,
          width: 327.w,

          child: Column(children: [
            context.text(text: "full Name", size: 16, color: context.blackColor),
            text_field(controller: _nameController),

            context.text(text: "Address", size: 16, color: context.blackColor),
            text_field(controller: _adddresController),

            context.text(text: "Telephon Nmuber", size: 16, color: context.blackColor),
            text_field(controller: _teltephoneController),

          ],),
        ),
        Container(
          height: 76.h,
          width: 372.w,
          child: text_field(controller: _adddresController),
        ),

        SizedBox(
          height: 15,
        ),
        context.text(
            text: "Select your City!",
            size: 14,
            color: context.blackColor,
            wieght: FontWeight.w200),

        DropdownButton<int>(
            icon: const Icon(Icons.location_city ,color: Colors.black),
            isExpanded: true,
            hint: const Text("City..."),
            style: GoogleFonts.ultra(fontSize: 13 ,fontWeight: FontWeight.w300 ,color:Color( context.greenColor)),
            value: _select ,
            onChanged: (int? vlaue) {
              setState(() => _select = vlaue);
            },
            items: city.map((City) => DropdownMenuItem<int>(
              child: Text(City.name),
              value: City.id  ,
            ))
                .toList()),
        elevatedButton(buttonText: "Next", padding: 20, onClick: (){}, size: 20)
      ],
    ),
    );
  }
}
