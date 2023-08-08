import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/screens/details/details_screen.dart';

import 'item_card.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child:   Text("SS Store", style: Theme.of(context).textTheme
      .headlineSmall
      ?.copyWith (fontWeight: FontWeight.bold),
      ),
    ),
    Categories(),
    Expanded(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child:   GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: kDefaultPaddin,
        crossAxisSpacing: kDefaultPaddin,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) => ItemCard(
        product: products[index],
        press:() => Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: products[index],
      ),
      ),
      ),
      ),
      ),
    ),
    ),
        ],
      ),
    );
  }
}

