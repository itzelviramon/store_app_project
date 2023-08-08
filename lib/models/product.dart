import 'package:flutter/material.dart';

class Product { 
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
} 

List<Product> products = [
  Product(
    id: 1,
    title: "Sudadera",
    price: 550,
    size: 12,
    description:('dummyText'),
    image: "assets/images/sudadera_blanca1.png",
    color: const Color(0xFF3D82AE)),
    Product(
      id: 2,
      title: "Gorra Rosa",
      price: 250,
      size: 5,
      description:('dummyText'),
      image: "assets/images/gorra_rosa1.png",
      color: const Color(0xFF3D82AE)),
      Product(
      id: 3,
      title: "Playera",
      price: 380,
      size: 5,
      description: ('dummyText'),
      image: "assets/images/playera1.png",
      color: const Color(0xFF3D82AE)),
      Product(
      id: 4,
      title: "Cangurera",
      price: 320,
      size: 4,
      description: ('dummyText'),
      image: "assets/images/cangurera1.png",
      color: const Color(0xFF3D82AE)),
      Product(
      id: 5,
      title: "Tenis Vans",
      price: 800,
      size: 25,
      description: ('dummyText'),
      image: "assets/images/tenis_vans1.png",
      color: const Color(0xFF3D82AE)),
      Product(
      id: 6,
      title: "Mochila",
      price: 600,
      size: 8,
      description: ('dummyText'),
      image: "assets/images/mochila1.png",
      color: const Color(0xFF3D82AE)),

];