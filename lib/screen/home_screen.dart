import 'package:badges/badges.dart';
import 'package:e_shopper/screen/cart_screen.dart';
import 'package:e_shopper/utils/color.dart';
import 'package:e_shopper/utils/shack_animation1.dart';
import 'package:e_shopper/utils/shack_animation2.dart';
import 'package:e_shopper/utils/shack_animation3.dart';
import 'package:e_shopper/utils/shack_animation4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'feed_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchtextcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 60.0,
              right: 0,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 45,
                              height: 45,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('assets/img/avatar.jpg'))),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Hi, Victorya',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              // fontFamily: ''
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Badge(
                          badgeContent: Text(''),
                          badgeColor: Colors.red,
                          child: InkWell(
                            onTap: () {
                              Get.to(() => CartScreen());
                            },
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: mainColor,
                              child: Icon(
                                FontAwesomeIcons.bagShopping,
                                color: secColor,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                            height: 48,
                            child: TextField(
                              controller: searchtextcontroller,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search,
                                      color: Colors.grey),
                                  hintText: 'Search',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                  )),
                              keyboardType: TextInputType.text,
                            )),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              color: secColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 7,
                    right: 7,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    // color: Colors.amber,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 3),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          ShackAnimation1(
                            child: Container(
                              width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: mainColor,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Cloth",
                                style: TextStyle(fontSize: 19, color: secColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ShackAnimation2(
                            child: Container(
                              width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: secColor,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Shose",
                                style:
                                    TextStyle(fontSize: 19, color: mainColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ShackAnimation3(
                            child: Container(
                              width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: secColor,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Jacket",
                                style:
                                    TextStyle(fontSize: 19, color: mainColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ShackAnimation4(
                            child: Container(
                              width: 80,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: secColor,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "t-shirt",
                                style:
                                    TextStyle(fontSize: 19, color: mainColor),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: FeedScreen(),
          ))
        ],
      ),
    );
  }
}
