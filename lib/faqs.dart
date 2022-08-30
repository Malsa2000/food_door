import 'package:flutter/material.dart';
import 'package:food_door/controller_helper.dart';
import 'models/faqs_model.dart';

class FaqsTest extends StatefulWidget {
  const FaqsTest({Key? key}) : super(key: key);

  @override
  State<FaqsTest> createState() => _FaqsTestState();
}

class _FaqsTestState extends State<FaqsTest> {
  List<FaqsModel> _faqs = <FaqsModel>[
    FaqsModel(qustion: "about the appliction", answer: "Ecomarce applcation"),
    FaqsModel(qustion: "name applcation", answer: "FoodDoor"),
    FaqsModel(qustion: "How Can Mack the Order", answer: "Using"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: ListView.builder(
        itemCount: _faqs.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(_faqs[index].qustion),
            leading: Icon(Icons.query_stats),

            //normal expantioal
            backgroundColor: Color(context.wihteColor),
            textColor: Color(context.greenColor),
            iconColor: Color(context.greenColor),

            //collabs=> when expanded
            collapsedBackgroundColor: Color(context.greyColor),
            collapsedIconColor:   Color(context.greenColor),
            collapsedTextColor:  Color(context.greenColor),
            onExpansionChanged: (bool value){

            },

            children: [Text(_faqs[index].answer)],
          );

        },

      ),
    );
  }
}
