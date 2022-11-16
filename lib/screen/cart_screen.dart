import 'package:e_shopper/utils/color.dart';
import 'package:e_shopper/utils/fade_animation.dart';
import 'package:e_shopper/utils/shack_animation1.dart';
import 'package:e_shopper/utils/shack_animation2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.00),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 25,
                left: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: secColor,
                        size: 20,
                      ),
                    ),
                    Text(
                      'Check Out',
                      style: TextStyle(color: secColor, fontSize: 23),
                    ),
                    Icon(
                      Icons.edit_calendar_outlined,
                      color: secColor,
                      size: 20,
                    )
                  ],
                )),
            Positioned(
                top: 40,
                right: 0,
                left: 0,
                bottom: 100,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    itemCount: 3,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => FadeAnimation(
                      1.2,
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: secColor,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SizedBox(
                                  width: 80,
                                  height: 80,
                                  child:
                                      Image.asset('assets/img/product-01.jpg')),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bridesmaid Dress',
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height <=
                                                825
                                            ? 16
                                            : 18,
                                        fontWeight: FontWeight.bold,
                                        color: mainColor,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Colo: blue',
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 152, 152, 152),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '\$200',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // IconButton(
                                //  onPressed: () {
                                //  splashRadius: 20,
                                // splashColor: Color.fromARGB(122, 255, 193, 7),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.minus,
                                        size: 25,
                                      ),
                                      splashColor:
                                          Color.fromARGB(131, 255, 193, 7),
                                      splashRadius: 25,
                                      onPressed: () {},
                                      color: Colors.black54,
                                    ),
                                    SizedBox(width: 1),
                                    Center(
                                        child: Text(
                                      '0',
                                      style: TextStyle(fontSize: 20),
                                    )),
                                    SizedBox(width: 1),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        size: 30,
                                      ),
                                      splashColor:
                                          Color.fromARGB(131, 255, 193, 7),
                                      splashRadius: 25,
                                      onPressed: () {},
                                      color: Colors.black54,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            Positioned(
              bottom: 10,
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
                    ShackAnimation1(
                      child: Text(
                        '\$2000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: mainColor),
                      ),
                    ),
                    ShackAnimation2(
                      child: Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(14)),
                        child: Text(
                          'Check Out',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
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
