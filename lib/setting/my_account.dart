import 'package:flutter/material.dart';
import 'package:food_door/Widget/elevated_button.dart';
import 'package:food_door/Widget/text_field.dart';
import 'package:food_door/controller_helper.dart';
class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

 late TextEditingController _nameController ;
 late TextEditingController _phoneController ;
 late TextEditingController _birthController ;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController =TextEditingController();
_phoneController =TextEditingController();
   _birthController =TextEditingController() ;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _birthController.dispose();

    super.dispose();
  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(

        padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
        children: [
          Icon(Icons.person ,color: Color(context.greenColor), size: 70,),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.topLeft,
            child:context.text(text: "Full Name", size: 15, color: context.blackColor ,wieght: FontWeight.w200),
          ),
          text_field(controller: _nameController ,keybord: TextInputType.text, prefexIcon: Icons.title,),

          // SizedBox(height: 20,),
          // Container(
          //   alignment: Alignment.topLeft,
          // child:  context.text(text: "Telephon number", size: 15, color: context.blackColor ,wieght: FontWeight.w200),
          // ),
          // text_field(controller: _phoneController ,keybord: TextInputType.number, prefexIcon: Icons.add_call,),

          SizedBox(height: 20,),
          Container(
            alignment: Alignment.topLeft,
           child: context.text(text: "date of birth ", size: 15, color: context.blackColor ,wieght: FontWeight.w200),
          ),

          text_field(controller: _birthController ,keybord: TextInputType.number,prefexIcon: Icons.numbers,),

          SizedBox(height: 20,),
          Container(
            alignment: Alignment.topLeft,
            child: context.text(text: "date of birth ", size: 15, color: context.blackColor ,wieght: FontWeight.w200),
          ),
          text_field(controller: _birthController ,keybord: TextInputType.number,prefexIcon: Icons.date_range_rounded),

          SizedBox(height: 40,),
          elevatedButton(buttonText: "save", padding: 20, onClick: (){}, size: 50 )

        ],
      ),
    );
  }
}
