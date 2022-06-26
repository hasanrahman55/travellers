import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingScreen extends HookConsumerWidget {
  const SettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List imageList = [
      "assets/a.jpg",
      "assets/b.jpg",
      "assets/c.jpg",
      "assets/d.jpg",
      "assets/e.jpg",
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 45,
                      width: 45,
                      child: Image(image: AssetImage("assets/settings.png")),
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 118, 115, 115).withOpacity(.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      child: Icon(Icons.add_box_outlined),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 45,
                      width: 45,
                      child: Icon(Icons.notifications_none),
                      decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/a.jpg"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Lana Smith",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "50 Following",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "50 Followers",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            GridView.custom(
              shrinkWrap: true,
              primary: false,
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: imageList.length,
                (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imageList[index]),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
