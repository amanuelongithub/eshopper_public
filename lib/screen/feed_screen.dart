import 'package:e_shopper/screen/detail_screen.dart';
import 'package:e_shopper/utils/color.dart';
import 'package:e_shopper/utils/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => index % 4 == 0
            ? StaggeredTile.count(2, index.isEven ? 3 : 4)
            : StaggeredTile.count(2, index.isEven ? 3 : 4),
        crossAxisCount: 4,
        mainAxisSpacing: 19,
        crossAxisSpacing: 20,
        physics: BouncingScrollPhysics(),
        itemCount: 18,
        itemBuilder: (context, index) =>
            FadeAnimation(1.3, buildImageCard(index)),
      ),
    );
  }

  Widget buildImageCard(int index) => Stack(children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Thounder",
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "600\$",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "brand new",
                    style: TextStyle(
                      fontSize: 13,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
          top: 0,
          left: 0,
          bottom: 50,
          right: 0,
          child: Hero(
            tag: index + 1,
            child: Material(
              child: InkWell(
                onTap: () {
                  Get.to(() => DetaileScreen(
                        index: index + 1,
                      ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/product-0${index + 1}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 17,
            left: 17,
            child: CircleAvatar(
                backgroundColor: mainColor,
                radius: 15,
                child: Icon(
                  Icons.favorite,
                  size: 14,
                  color: secColor,
                ))),
      ]);
}
