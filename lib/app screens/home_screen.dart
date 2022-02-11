

import 'package:build_own_cake/app%20screens/cake_view.dart';
import 'package:build_own_cake/app%20screens/see_all.dart';
import 'package:build_own_cake/app%20screens/size_screen.dart';
import 'package:build_own_cake/utils/app_routes.dart';
import 'package:build_own_cake/utils/config.dart';
import 'package:build_own_cake/utils/dynamic_sizes.dart';
import 'package:build_own_cake/widgets/app_bar.dart';
import 'package:build_own_cake/widgets/buttons.dart';
import 'package:build_own_cake/widgets/carousel_widget.dart';
import 'package:build_own_cake/widgets/drawer_widgets.dart';
import 'package:build_own_cake/widgets/text_widget.dart';
import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:badges/badges.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List cake = [
  {
    "name": "Anniversary Cake",
    "images": [
      "assets/4K8A7063.JPG",
      "assets/4K8A7108.JPG",
      "assets/4K8A7119.JPG",
      "assets/4K8A7122.JPG",
    ],
    "description":
        "Anniversary Cake is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Elephant Cake",
    "images": [
      "assets/4K8A7354.JPG",
      "assets/4K8A7369.JPG",
      "assets/4K8A7374.JPG",
      "assets/4K8A7376.JPG",
    ],
    "description":
        "Elephant Cake is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Floral Dream",
    "images": [
      "assets/4K8A7261.JPG",
      "assets/4K8A7286.JPG",
    ],
    "description":
        "Floral Dream is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Sweet Swan",
    "images": [
      "assets/4K8A7393.JPG",
      "assets/4K8A7395.JPG",
      "assets/4K8A7410.JPG",
    ],
    "description":
        "Sweet Swan is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Party In Pink",
    "images": [
      "assets/4K8A7147.JPG",
    ],
    "description":
        "Party In Pink is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Lilac Love",
    "images": [
      "assets/4K8A7601.JPG",
      "assets/4K8A7616.JPG",
      "assets/4K8A7617.JPG",
    ],
    "description":
        "Lilac Love is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Sunflower Cake",
    "images": [
      "assets/4K8A7456.JPG",
      "assets/4K8A7491.JPG",
    ],
    "description":
        "Sunflower Cake is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
  {
    "name": "Bird Song",
    "images": [
      "assets/4K8A7215.JPG",
      "assets/4K8A7229.JPG",
    ],
    "description":
        "Bird Song is sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring. 2. a flat, thin mass of bread, esp. unleavened bread."
  },
];

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var sum = 0.obs;
  final ImagePicker _picker = ImagePicker();
   XFile? _Image;
    /// Get from gallery
  getFromGallery() async {
     final XFile? image = await _picker.pickImage(
       source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
       );
       if(image == null){
         return;
       }
       setState(() {
         _Image = image;
       });
       
  }
  

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: SizedBox(
          width: dynamicWidth(context, 0.85),
          child: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                // gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomLeft,
                //   colors: [
                //     myWhite,
                //     myLightPink,
                //   ],
                // ),
              ),
              child: ListView(
                children: [
                  SizedBox(
                    //width:dynamicWidth(context,)
                    height: dynamicHeight(context, 0.12),
                    child: DrawerHeader(
                      child: text(context, "Cart", 0.08, myBlack),
                    ),
                  ),

                  Obx(
                    () => SizedBox(
                      height: dynamicHeight(context, 0.68),
                      child: ListView.builder(
                        itemCount: cart.length,
                        itemBuilder: (BuildContext context, int index) {
                         //sum =sum+(int.parse(cart[index]['price']) * cart[index]['quantity']);
                         
                          return Slidable(
                             endActionPane:
                            ActionPane(motion: const ScrollMotion(), children: [
                          SlidableAction(
                            onPressed: (BuildContext context) {
                      
                              cart.removeAt(index);
                              MotionToast.delete(
                                      title: const Text("Removed"),
                                      
                                      description:const Text("The item is Removed"),
                                      toastDuration:const  Duration(milliseconds: 2200),
                              )
                                  .show(context);
                            
                              
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete_outlined,
                            label: 'Delete',
                          ),
                           ]),
                            child: ItemCard(
                                image: cart[index]['image'],
                                name: cart[index]['name'],
                                size: cart[index]['size'],
                                price: cart[index]['price'],
                                quantity : cart[index]['quantity']),
                          );
                        },
                      ),
                    ),
                  ),

                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: dynamicWidth(context, 0.03)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(context, "Total:", 0.04, myBlack),
                        Obx(()=>text(
                              context, sum.toString(), 0.035, myBlack)),
                              //  text(context, sum.toString(), 0.035, myBlack)
                        
                      ],
                    ),
                  ),
                  heightBox(context, 0.035),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      coloredButton(
                        context,
                        "Checkout",
                        myBlack,
                        width: dynamicWidth(context, 0.5),
                      ),
                  heightBox(context, 0.02),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: myBlack,
          onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          child: Badge(
             badgeContent: Obx(()=> text(context, cart.length.toString(), 0.025, myBlack,bold:true)),
            //  shape: BadgeShape.square,
            //  borderRadius: BorderRadius.circular(8),
             badgeColor: myWhite,
            child: const Icon(
              Icons.shopping_cart,
              color: myWhite,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: dynamicWidth(context, 1),
            height: dynamicHeight(context, 1),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  myWhite,
                  myLightPink,
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, .04),
                    vertical: dynamicHeight(context, .01),
                  ),
                  child: appBar(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, .04),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () => push(context, const SeeAll()),
                        child: text(
                          context,
                          "See All",
                          0.035,
                          myBlack,
                        ),
                      ),
                    ],
                  ),
                ),
                heightBox(context, 0.01),
                SizedBox(
                  height: dynamicHeight(context, 0.55),
                  child: CarouselSlider(
                    items: [
                      cakeShow(context, "assets/4K8A7063.JPG",
                          cake[0]['name'], "1200", cake[0]['description'], 0),
                      cakeShow(context, cake[2]['images'][0], cake[2]["name"],
                          "1800", cake[2]['description'], 2),
                      cakeShow(context, cake[4]['images'][0], cake[4]['name'],
                          "1500", cake[4]['description'], 4),
                      cakeShow(context, cake[5]['images'][0], cake[5]['name'],
                          "1400", cake[5]['description'], 5),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      height: dynamicHeight(context, 0.55),
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: .7,
                    ),
                  ),
                ),
                heightBox(context, 0.05),
                coloredButton(
                  context,
                  "Build Your Cake",
                  myBlack,
                  width: dynamicWidth(context, 0.5),
                  function: () {
                    push(
                      context,
                      const SizeScreen(),
                    );
                  },
                ),
                heightBox(context, 0.01),
                text(context, "OR", 0.04, myGrey),
                heightBox(context, 0.01),
                InkWell(
                  onTap: ()=>getFromGallery(),
                  child: Container(
                    width: dynamicWidth(context, 0.4),
                    height: dynamicWidth(context, .2),
                    decoration: BoxDecoration(
                      color: myBlack,
                      borderRadius: BorderRadius.circular(
                        dynamicWidth(
                          context,
                          0.03,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt,
                            size: dynamicHeight(context, 0.04), color: myWhite),
                        Text(
                          "Upload Image",
                          style: TextStyle(
                            color: myWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: dynamicWidth(context, 0.04),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

   
   }
  //  late File imageFile;
  // getFromGallery() async {
  //   final pickedFile = await ImagePicker().pickImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   setState(() {
  //     imageFile = pickedFile as File;
  //   });
  // }
}
