import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/controller_helper.dart';

import '../Widget/cart_item.dart';

class Catogies extends StatefulWidget {
  const Catogies({Key? key}) : super(key: key);

  @override
  State<Catogies> createState() => _CatogiesState();
}

class _CatogiesState extends State<Catogies>
    with SingleTickerProviderStateMixin {
  String _itemSeleced = "vegetable";

  late TabController _tabController;
  List<String> _image = <String>[
    "fish1",
    "vegetable",
    "meat",
    "lettuce",
    "bread",
    "harvest",
  ];
  List<String> _nameItem = <String>[
    "fish",
    "vegetable",
    "meat",
    "lettuce",
    "bread",
    "harvest",

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if (modalRoute != null && modalRoute.settings.arguments != null) {
      if (modalRoute.settings.arguments is Map<String, dynamic>) {
        Map<String, dynamic> map =
            modalRoute.settings.arguments as Map<String, dynamic>;
        if (map.containsKey("itemSelected")) {
          _itemSeleced = map['itemSelected'];
        }
      }
    }

    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          title: Text(_itemSeleced),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/Home");
            },
            icon: Icon(Icons.arrow_back_ios_new),
            iconSize: 24,
            color: Color(0xFF272459),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              iconSize: 24,
              color: Color(0xFF272459),
            ) ,
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart_payment');
              },
              icon: Icon(Icons.search),
              iconSize: 24,
              color: Color(0xFF272459),
            )
          ],
        ),
        body:
        ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TabBar(
                onTap: (int index) {
                  setState(() => _tabController.index = index);
                },
                indicatorSize: TabBarIndicatorSize.label,
               isScrollable: true,
                indicator: BoxDecoration(
                  color: Color(0xFF6CFBE2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                //labelColor: Color(0xFFF35C56),
                controller: _tabController,
                tabs: [
                  tab_bar(image: _image[0]),
                  tab_bar(image:_image[1]),
                  tab_bar(image: _image[2]),
                  tab_bar(image: _image[3]),
                  tab_bar(image: _image[4]),
                  tab_bar(image: _image[5]),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 30, maxWidth: 360.w),
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    width: 60.w,
                    height: 20.h,
                    child: context.text(
                          text: _nameItem[index],
                          size: 15,
                          wieght: FontWeight.w200,
                          color: _tabController.index == index
                              ? (0xFF0F6657)
                              : (0xFF272459)),


                  );
                },
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: _tabController.index,
                children: [
                  SubCatogres(
                    tabController: _tabController,
                    index: 0,
                    image:"images/fish.png" ,
                    name: "Salamooon" ,
                  ),
                  SubCatogres(
                    tabController: _tabController,
                    index: 1,
                    image:"images/veg.png" ,
                    name: "Carotes" ,
                  ),
                  SubCatogres(
                    tabController: _tabController,
                    index: 2,
                    image:"images/item_meat.png" ,
                    name: "Bref" ,
                  ),
                  SubCatogres(
                    tabController: _tabController,
                    index: 3,
                    image:"images/paper.png" ,
                    name: "Apples" ,
                  ),
                  SubCatogres(
                    tabController: _tabController,
                    index: 4,
                    image:"images/frute.png" ,
                    name: "parsaly" ,
                  ),
                  SubCatogres(
                    tabController: _tabController,
                    index: 5,
                    image:"images/fish.png" ,
                    name: "peratd" ,
                  ),



                ],
              ),
            )
          ],
        )
        );
  }
}

class tab_bar extends StatelessWidget {
  final String image;

  const tab_bar({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 90.h,
          width: 70.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFC8C8D3)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5))),
          child: Image(
            height: 70.h,
            width: 50.w,
            image: AssetImage("images/$image.png"),
          ),
        ),
      ],
    );
  }
}

class SubCatogres extends StatelessWidget {
  final int index;
  final String image;
  final String name;

  const SubCatogres({
    Key? key,
    required this.index,
    required this.image,
    required this.name,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _tabController.index == index,
      child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30.h),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 60 / 80,
              mainAxisSpacing: 15),
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/Item');
                },
                child: card_item(text: "$name", image: "$image"));
          }),
    );
  }
}
