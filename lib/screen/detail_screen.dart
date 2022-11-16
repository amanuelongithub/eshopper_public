import 'package:badges/badges.dart';
import 'package:e_shopper/main.dart';
import 'package:e_shopper/utils/color.dart';
import 'package:e_shopper/utils/shack_animation1.dart';
import 'package:e_shopper/utils/shack_animation2.dart';
import 'package:e_shopper/utils/shack_animation3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../utils/like_animation.dart';

class DetaileScreen extends StatefulWidget {
  final index;
  const DetaileScreen({Key? key, this.index}) : super(key: key);

  @override
  State<DetaileScreen> createState() => _DetaileScreenState();
}

class _DetaileScreenState extends State<DetaileScreen> {
  bool isLikeAnimating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Hero(
                tag: widget.index,
                child: GestureDetector(
                    onDoubleTap: () {
                      Get.back();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                          'assets/img/product-0${widget.index}.jpg'),
                    )),
              ),
            ),
            Positioned(
                top: 20,
                right: 15,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: mainColor,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 15,
                            color: secColor,
                          )),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            isLikeAnimating = true;
                          });
                        },
                        child: CircleAvatar(
                            radius: 20,
                            foregroundColor: secColor,
                            backgroundColor: mainColor,
                            child: isLikeAnimating
                                ? AnimatedOpacity(
                                    duration: Duration(milliseconds: 900),
                                    opacity: isLikeAnimating ? 1 : 0,
                                    child: LikeAnimation(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 28,
                                      ),
                                      isAnimating: isLikeAnimating,
                                      duration: Duration(milliseconds: 400),
                                      onEnd: () {
                                        setState(() {
                                          isLikeAnimating = false;
                                        });
                                      },
                                    ))
                                : Icon(
                                    Icons.favorite,
                                    color: secColor,
                                    size: 20,
                                  )))
                  ],
                )),
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Jean jacket",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "\$109.00",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Color",
                            style: TextStyle(
                                fontSize: 20,
                                color: mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Badge(
                                  badgeContent: Text(''),
                                  badgeColor: mainColor,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor:
                                        Color.fromARGB(255, 149, 203, 232),
                                  )),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor:
                                    Color.fromARGB(255, 232, 229, 149),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor:
                                    Color.fromARGB(255, 232, 166, 149),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                                fontSize: 20,
                                color: mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              ShackAnimation1(
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: mainColor,
                                  child: Text('S'),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              ShackAnimation2(
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: secColor,
                                  child: Text('M'),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              ShackAnimation3(
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: secColor,
                                  child: Text(
                                    'L',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    color: Color.fromARGB(222, 240, 240, 240),
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: mainColor,
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            color: secColor,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: mainColor,
                          child: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: secColor,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(14)),
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
