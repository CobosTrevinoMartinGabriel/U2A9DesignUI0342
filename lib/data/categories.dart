import 'package:flutter/material.dart';

class Category {
  final String name;
  final String image;
  final Color color;

  Category({required this.name, required this.image, required this.color});
}

List<Category> categories = [
  Category(
    name: "Juegos",
    image: "assets/MM11.png",
    color: const Color(0xfff2f6bf),
  ),
  Category(
    name: "Figuras",
    image: "assets/X.png",
    color: const Color(0xfff1d7a0),
  ),
  Category(
    name: "Ropa",
    image: "assets/Ropita.png",
    color: const Color(0xffffb960),
  ),
  Category(
    name: "Discos",
    image: "assets/sndtrck.jpeg",
    color: const Color(0xffffbc29),
  ),
  Category(
    name: "Comics",
    image: "assets/as.jpeg",
    color: Color(0xffffaf35),
  ),
];
