import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_door/Widget/cart_item.dart';
import 'package:food_door/controller_helper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int _currentIndex = 0;
  List<String> _image = <String>[
    "fish1",
    "vegetable",
    "meat",
    "lettuce",
    "bread",
    "harvest",
  ];


  List<String> _list_image2 = <String>[
    "list1_v1",
    "list1_v2",
    "list1_v3",
    "list1_v1",
    "list1_v2",
  ];
  List<String> _title2 = <String>[
    "Super Deal",
    "FreeShip",
    "Burger",
    "FreeShip",
    "FreeShip",
  ];
  List<String> _image_pageview = <String>[
    "pag_view1",
    "pag_view2",
    "pag_view1",
    "pag_view2",
  ];
  List<String> _popularList = <String>[
    "popular_list1",
    "popular_list2",
    "popular_list3",
    "popular_list1",
    "popular_list2",
    "popular_list3",
    "popular_list1",
    "popular_list2",
    "popular_list3",
    "popular_list1",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 2, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Color(context.greyColor),
  body:  ListView(
    padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
         children: [
           ConstrainedBox(
             constraints: BoxConstraints(
               minHeight: 200.h,
               minWidth: 350.w,
               maxHeight: 200.h,
               maxWidth: 350.w,
             ),
             child: PageView.builder(
                 itemCount: 4,
                 controller: _pageController,
                 onPageChanged: (int pagIndex) {
                   setState(() => _currentIndex = pagIndex);
                 },
                 itemBuilder: (context, index) {
                   return Container(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     alignment: Alignment.center,
                     height: 180.h,
                     width: 350.w,
                     child: Image(
                       // image: AssetImage("images/${_image_pageview[index]}.png"),
                       image: AssetImage("images/${_image_pageview[index]}.png"),
                     ),
                   );
                 }),),
            Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabPageSelectorIndicator(backgroundColor: _currentIndex ==0 ? Color(context.greenColor) :Colors.black45,
                borderColor: Color(context.greenColor), size: 8)
            ,TabPageSelectorIndicator(backgroundColor: _currentIndex ==1 ? Color(context.greenColor) :Colors.black45,
                borderColor: Color(context.greenColor), size: 8)
            ,TabPageSelectorIndicator(backgroundColor: _currentIndex ==2 ? Color(context.greenColor) :Colors.black45,
                borderColor: Color(context.greenColor), size: 8)
            ,TabPageSelectorIndicator(backgroundColor: _currentIndex ==3 ? Color(context.greenColor) :Colors.black45,
                borderColor: Color(context.greenColor), size: 8)

          ],),

            SizedBox(height: 20,),
            row_main(text: "Catogres", rout: '/AllCatogres'),
           ConstrainedBox(
             constraints: BoxConstraints(minWidth: 320 ,minHeight: 90 ,maxWidth: 320 ,maxHeight: 90),
           child:
           GridView.builder(
               scrollDirection: Axis.horizontal,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 1,
                   crossAxisSpacing: 20,
                   mainAxisSpacing: 20,
                   childAspectRatio: 110 / 80),
               itemCount: 10,
               itemBuilder: (context, index) {
                 return Container(
                   height: 90.h,
                   width: 70.w,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     color: Color(context.greenColor),
                       border: Border.all(color: Color(0xFFC8C8D3)),
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(5),
                           bottomRight: Radius.circular(5),
                           bottomLeft: Radius.circular(5))),
                   child: Image(
                     height: 70.h,
                     width: 50.w,
                     image: AssetImage("images/${_image[index]}.png"),
                   ),
                 );
               }),
             ),

           SizedBox(height: 20,),
           row_main(text: "Favorit", rout: '/Favorit'),
           list_last_seen(),

           SizedBox(height: 20,),
           row_main(text: "product", rout: '/Favorit'),
           ConstrainedBox(
                   constraints: BoxConstraints(maxHeight: 188.h, maxWidth: 150.w),
                   child: GridView.builder(
                       padding: EdgeInsets.symmetric(horizontal: 20),
                       scrollDirection: Axis.horizontal,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 1,
                           crossAxisSpacing: 15,
                           mainAxisSpacing: 15,
                           childAspectRatio: 188 / 150),
                       itemCount: 5,
                       itemBuilder: (context, index) {
                         return card_item(text: _title2[index], image: "images/${_image[index]}.png");

                       }),
                 ),



         ],)
    );




// body :Stack(
//   children:[
//     // Column(
//     //   children: [
//     //     Container(
//     //       height: 250.h,
//     //       width: 360.w,
//     //       child: Column(
//     //           children:[
//     //             Row(children: [
//     //               context.text(
//     //                   text: "FOOD",
//     //                   size: 28,
//     //                   color: context.wihteColor,
//     //                   wieght: FontWeight.w500),
//     //               context.text(
//     //                   text: "DOOR",
//     //                   size: 28,
//     //                   color: context.yellowColor,
//     //                   wieght: FontWeight.w500)
//     //             ],),
//     //             Row(
//     //               children: [
//     //                 Icon(
//     //                   Icons.location_on_rounded,
//     //                   size: 9,
//     //                   color: Color(context.wihteColor),
//     //                 ),
//     //                 context.text(
//     //                     text: "202 AlNakhel street in Gaza ,M205132",
//     //                     size: 14,
//     //                     color: context.wihteColor,
//     //                     wieght: FontWeight.w400)
//     //               ],
//     //             ),
//     //           ]),
//     //
//     //       decoration: BoxDecoration(
//     //         color: Color(context.greenColor),
//     //         borderRadius: BorderRadius.only(
//     //             bottomLeft: Radius.circular(10),
//     //             bottomRight: Radius.circular(10)),
//     //       ),),
//     //     Container(
//     //       height: 450.h,
//     //       width: 360.w,
//     //       decoration: BoxDecoration(
//     //         color: Color(context.wihteColor),
//     //         borderRadius: BorderRadius.only(
//     //             bottomLeft: Radius.circular(20),
//     //             bottomRight: Radius.circular(20)),
//     //       ),
//     //     ),
//     //   ],
//     // ),
//     Positioned(
//       top :50,
//       left: 20,
//       right: 20,
//       bottom: 450,
//       child: SingleChildScrollView(
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children : [
//               Row(mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TabPageSelectorIndicator(backgroundColor: _currentIndex ==0 ? Color(context.greenColor) :Colors.black45,
//                       borderColor: Color(context.greenColor), size: 8)
//                   ,TabPageSelectorIndicator(backgroundColor: _currentIndex ==1 ? Color(context.greenColor) :Colors.black45,
//                       borderColor: Color(context.greenColor), size: 8)
//                   ,TabPageSelectorIndicator(backgroundColor: _currentIndex ==2 ? Color(context.greenColor) :Colors.black45,
//                       borderColor: Color(context.greenColor), size: 8)
//                   ,TabPageSelectorIndicator(backgroundColor: _currentIndex ==3 ? Color(context.greenColor) :Colors.black45,
//                       borderColor: Color(context.greenColor), size: 8)
//
//                 ],),
//               TextButton(onPressed: (){
//                 Navigator.pushNamed(context, '/Setting');
//               }, child:Text( "malsa") ,),
//               ConstrainedBox(
//                 constraints: BoxConstraints(
//                   minHeight: 180.h,
//                   minWidth: 320.w,
//                   maxWidth: 340.w,
//                   maxHeight: 200.h,
//                 ),
//                 child: PageView.builder(
//                     itemCount: 4,
//                     controller: _pageController,
//                     onPageChanged: (int pagIndex) {
//                       setState(() => _currentIndex = pagIndex);
//                     },
//                     itemBuilder: (context, index) {
//                       return Container(
//                         padding: EdgeInsets.symmetric(horizontal: 2),
//                         alignment: Alignment.center,
//                         height: 150.h,
//                         width: 200.w,
//                         child: Image(
//                           image: AssetImage("images/${_image_pageview[index]}.png"),
//                         ),
//                       );
//                     }),),
//
//
//             ]),
//       ),
//     ),
//     // Positioned(
//     //   top :350,
//     //   left: 20,
//     //   right: 20,
//     //   bottom: 0,
//     //   child:ListView(
//     //     children: [
//     //       SizedBox(
//     //         height: 44,
//     //       ),
//     //       row_main(text: "Catogres", rout: "/catogres"),
//     //       ConstrainedBox(
//     //         constraints: BoxConstraints(minWidth: 340.w, minHeight: 90),
//     //         child: GridView.builder(
//     //             padding: EdgeInsets.symmetric(horizontal: 20),
//     //             scrollDirection: Axis.horizontal,
//     //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     //                 crossAxisCount: 1,
//     //                 crossAxisSpacing: 15,
//     //                 mainAxisSpacing: 15,
//     //                 childAspectRatio: 90 / 66),
//     //             itemCount: 7,
//     //             itemBuilder: (context, index) {
//     //               return Column(
//     //                 children: [
//     //                   Container(
//     //                       height: 66.h,
//     //                       width: 66.w,
//     //                       alignment: Alignment.center,
//     //                       decoration: BoxDecoration(
//     //                         color: Color(context.greenColor),
//     //                         borderRadius: BorderRadius.only(
//     //                           topLeft: Radius.circular(15),
//     //                           bottomLeft: Radius.circular(15),
//     //                           bottomRight: Radius.circular(15),
//     //                         ),
//     //                       ),
//     //                       child: Image(
//     //                         height: 50.h,
//     //                         width: 40.w,
//     //                         image: AssetImage("images/${_image[index]}.png"),
//     //                       )),
//     //                   context.text(
//     //                       text: "meat", size: 12, color: context.blackColor)
//     //                 ],
//     //               );
//     //             }),
//     //       ),
//     //       SizedBox(
//     //         height: 44,
//     //       ),
//     //       row_main(text: "Favorit", rout: "/Favorit"),
//     //       ConstrainedBox(
//     //         constraints: BoxConstraints(maxHeight: 153.h, maxWidth: 126.w),
//     //         child: GridView.builder(
//     //             padding: EdgeInsets.symmetric(horizontal: 28),
//     //             scrollDirection: Axis.horizontal,
//     //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     //                 crossAxisCount: 1,
//     //                 mainAxisSpacing: 15,
//     //                 childAspectRatio: 153 / 126),
//     //             itemCount: 5,
//     //             itemBuilder: (context, index) {
//     //               return Column(
//     //                   crossAxisAlignment: CrossAxisAlignment.center,
//     //                   mainAxisAlignment: MainAxisAlignment.center,
//     //                   children: [
//     //                     Image(
//     //                       height: 103.h,
//     //                       width: 103.w,
//     //                       image:
//     //                       AssetImage("images/${_popularList[index]}.png"),
//     //                     ),
//     //                     context.text(
//     //                         text: "${_title2[index]}",
//     //                         size: 14,
//     //                         color: context.blackColor,
//     //                         wieght: FontWeight.w300)
//     //                   ]);
//     //             }),
//     //       ),
//     //       SizedBox(
//     //         height: 44,
//     //       ),
//     //       row_main(text: "Last Seen", rout: "/Favorit"),
//     //       list_last_seen(),
//     //       SizedBox(
//     //         height: 44,
//     //       ),
//     //       row_main(text: "Collection", rout: "/AllCatogres"),
//     //       ConstrainedBox(
//     //         constraints: BoxConstraints(maxHeight: 188.h, maxWidth: 150.w),
//     //         child: GridView.builder(
//     //             padding: EdgeInsets.symmetric(horizontal: 20),
//     //             scrollDirection: Axis.horizontal,
//     //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     //                 crossAxisCount: 1,
//     //                 crossAxisSpacing: 15,
//     //                 mainAxisSpacing: 15,
//     //                 childAspectRatio: 188 / 150),
//     //             itemCount: 5,
//     //             itemBuilder: (context, index) {
//     //               return Column(
//     //                   mainAxisAlignment: MainAxisAlignment.center,
//     //                   children: [
//     //                     Image(
//     //                       height: 135.h,
//     //                       width: 150.w,
//     //                       image:
//     //                       AssetImage("images/${_list_image2[index]}.png"),
//     //                     ),
//     //                     SizedBox(
//     //                       height: 10,
//     //                     ),
//     //                     context.text(
//     //                         text: "${_title2[index]}",
//     //                         size: 14,
//     //                         color: context.blackColor,
//     //                         wieght: FontWeight.w300)
//     //                   ]);
//     //             }),
//     //       ),
//     //       SizedBox(
//     //         height: 44,
//     //       ),
//     //       row_main(text: "Catogres", rout: "/"),
//     //       GridView.builder(
//     //           shrinkWrap: true,
//     //           physics: NeverScrollableScrollPhysics(),
//     //           padding: EdgeInsets.symmetric(horizontal: 20),
//     //           scrollDirection: Axis.horizontal,
//     //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     //               crossAxisCount: 4,
//     //               crossAxisSpacing: 15,
//     //               mainAxisSpacing: 15,
//     //               childAspectRatio: 90 / 66),
//     //           itemCount: 8,
//     //           itemBuilder: (context, index) {
//     //             return Column(
//     //               children: [
//     //                 Container(
//     //                     height: 66.h,
//     //                     width: 66.w,
//     //                     alignment: Alignment.center,
//     //                     decoration: BoxDecoration(
//     //                       color: Color(context.wihteColor),
//     //                       borderRadius: BorderRadius.circular(10.r),
//     //                     ),
//     //                     child: Image(
//     //                       height: 50.h,
//     //                       width: 40.w,
//     //                       image: AssetImage("images/${_image[index]}.png"),
//     //                     )),
//     //                 context.text(
//     //                     text: "vegeta", size: 12, color: context.blackColor)
//     //               ],
//     //             );
//     //           }),
//     //     ],
//     //   ),
//     // )
//   ],)

  }
}

class list_last_seen extends StatelessWidget {
  const list_last_seen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 140, maxWidth: 327),
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 110 / 327),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              width: 300.w,
              height: 100.h,
              alignment: Alignment.centerRight,
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
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite),
                                iconSize: 24,
                                color: Color(context.greenColor),
                              )
                            ]),
                        Image(
                          image: AssetImage("images/item_meat.png"),
                          alignment: Alignment.bottomLeft,
                          fit: BoxFit.fitHeight,
                          height: 60.h,
                          width: 100.w,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        context.text(
                            text: "Meat Luncher",
                            size: 18,
                            color: (context.greenColor),
                            wieght: FontWeight.w400),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            context.text(
                                text: "Member me",
                                size: 14,
                                color: (context.blackColor),
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
                                itemCount: 3,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0.5),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ],
                        ),
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
              ),
            );
          }),
    );
  }
}

class row_main extends StatelessWidget {
  final String rout;

  final String text;

  const row_main({
    Key? key,
    required this.text,
    required this.rout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        context.text(
            text: text,
            size: 16,
            color: context.blackColor,
            wieght: FontWeight.w400),
        Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, rout);
          },
          child: context.text(
              text: context.localizations.see_all,
              size: 12,
              color: (context.greenColor),
              wieght: FontWeight.w300),
        ),
      ],
    );
  }
}

class contaner extends StatelessWidget {
  final String imageName;
  final int color;
  final String nameItem;

  const contaner(
      {Key? key,
      required this.imageName,
      required this.color,
      required this.nameItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: Image(
            image: AssetImage(imageName),
          ),
        ),
        Text(context.text(text: nameItem, size: 14, color: (0xFF272459)))
      ],
    );
  }
}
