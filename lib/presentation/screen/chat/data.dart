import 'package:flutter/material.dart';

class Data {
  final String title;
  final String des;
  final String image;
  Data({
    required this.title,
    required this.des,
    required this.image,
  });
}

List<Data> chatingData = [
  Data(title: "Jahid Khan", des: "hello bhai ki ..", image: "assets/a.jpg"),
  Data(title: "Rahim bhai", des: "hello bhai ki ..", image: "assets/b.jpg"),
  Data(title: "Korim bhai", des: "hello bhai ki ..", image: "assets/c.jpg"),
  Data(title: "Jahid Khan", des: "hello bhai ki ..", image: "assets/d.jpg"),
  Data(title: "Jahid Khan", des: "hello bhai ki ..", image: "assets/a.jpg"),
  Data(title: "Jahid Khan", des: "hello bhai ki ..", image: "assets/b.jpg"),
  Data(title: "Jahid Khan", des: "hello bhai ki ..", image: "assets/c.jpg"),
  Data(title: "Jahid Khan", des: "hello bhai ki ..", image: "assets/d.jpg"),
];
