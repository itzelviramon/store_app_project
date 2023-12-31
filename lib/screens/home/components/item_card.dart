import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import '../../../constant.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    super.key, 
    required this.product, 
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return    
     GestureDetector(
      onTap: press,
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
              Expanded(
                child: Container(
                        padding: EdgeInsets.all(kDefaultPaddin),
                        //height: 180,
                        // width: 160,
                         decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16)
                ),
                child: Image.asset(product.image),
                         ),
              ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
               child: Text(
                products.title, 
                style: TextStyle(color: kTextLightColor),
                ),
             ),
         Text("\$${product.price}",
       style: TextStyle(fontWeight: FontWeight.bold),
         ),
        ],
         ),
     );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

