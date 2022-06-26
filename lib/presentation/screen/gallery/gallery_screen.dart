import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Media {
  final AssetImage image;
  final String text;
  Media({
    required this.image,
    required this.text,
  });
}

class GalleryScreen extends HookConsumerWidget {
  const GalleryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List imageList = [
      "assets/a.jpg",
      "assets/b.jpg",
      "assets/c.jpg",
      "assets/d.jpg",
      "assets/e.jpg",
      "assets/b.jpg",
      "assets/c.jpg",
      "assets/d.jpg",
      "assets/e.jpg",
    ];

    List<Media> media = [
      Media(image: AssetImage("assets/icon/gallery.png"), text: 'Gallery'),
      Media(image: AssetImage("assets/icon/camera.png"), text: 'Camera'),
      Media(
          image: AssetImage("assets/icon/money-transfer.png"),
          text: 'Transfer'),
      Media(image: AssetImage("assets/icon/agreement.png"), text: 'Contacts'),
      Media(image: AssetImage("assets/icon/sticker.png"), text: 'Sticker'),
      Media(image: AssetImage("assets/icon/surprise.png"), text: 'Gift'),
      Media(image: AssetImage("assets/icon/placeholder.png"), text: 'Location'),
      Media(image: AssetImage("assets/icon/note.png"), text: 'Fill'),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: ListView(
          children: [
            Text(
              "Gallery",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageList[index]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Media",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            GridView.builder(
                primary: false,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 4,
                ),
                itemCount: 8,
                itemBuilder: (context, index) => Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            height: 45,
                            width: 45,
                            child: Image(image: media[index].image),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 118, 115, 115)
                                  .withOpacity(.1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(media[index].text),
                        ],
                      ),
                    )),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
