import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DiscoverScreen extends HookConsumerWidget {
  const DiscoverScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> list = [
      Container(
        width: 90,
        height: 10,
        child: Text("he"),
      ),
      Tab(
        //  icon: Icon(Icons.card_travel),
        text: "hh",
      ),
      Tab(icon: Icon(Icons.card_travel)),
    ];

    List imageList = [
      "assets/a.jpg",
      "assets/b.jpg",
      "assets/c.jpg",
      "assets/d.jpg",
      "assets/e.jpg",
      "assets/b.jpg",
    ];
    final _index = useState(0);
    final _key = GlobalKey();
    final searchController = TextEditingController();

    final tabController = useTabController(initialLength: list.length);
    tabController.addListener(() {
      _index.value = tabController.index;
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            const SizedBox(height: 30),
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
            const SizedBox(height: 20),
            const Text(
              "Discover",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // search bar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Search",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  fillColor: Color(0xffF2F2F2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                ),
              ),
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
