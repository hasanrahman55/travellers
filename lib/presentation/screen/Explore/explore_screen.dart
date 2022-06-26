import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreScreen extends HookConsumerWidget {
  const ExploreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            SizedBox(height: 30),
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
            SizedBox(height: 20),
            Text(
              "Explore",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
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

            ListView.separated(
              itemCount: 4,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              //  physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    height: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/a.jpg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Positioned(
                    left: 30,
                    top: 20,
                    child: Container(
                      height: 50,
                      width: 180,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/a.jpg"),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rakib Ahmed",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Text(
                                "Just now",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 24,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.3),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    bottom: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      height: 50,
                      width: 280,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 70,
                            child: Row(
                              children: [
                                SizedBox(width: 6),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 18,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "800",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.4),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage("assets/messenger.png"),
                                height: 20,
                                width: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "300",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/send.png"),
                            height: 20,
                            width: 20,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),

              separatorBuilder: (context, index) => SizedBox(height: 30),
            ),
          ],
        ),
      ),
    );
  }
}
