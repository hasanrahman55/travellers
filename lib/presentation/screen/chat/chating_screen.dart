import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travellers/presentation/screen/chat/data.dart';

class ChatingScreen extends HookConsumerWidget {
  const ChatingScreen({Key? key}) : super(key: key);
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
                    Text(
                      "Chat",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
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
            SizedBox(height: 20),
            // search bar
            TextField(
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
            SizedBox(height: 30),

            ListView.builder(
              itemCount: chatingData.length,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              //  physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chatingData[index].image),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Just now",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    CircleAvatar(
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 9),
                      ),
                      backgroundColor: Colors.blueAccent,
                      radius: 8,
                    ),
                  ],
                ),
                title: Text(
                  chatingData[index].title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  chatingData[index].des,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
