import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 10.0),
      margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min, // Allow height to adjust to content
        children: [
          // Shoe image
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                child: Image.asset(
                  width: 180,
                  shoe.imagePath,
                  fit: BoxFit.fitWidth,
                ),
              )),

          // const SizedBox(
          //   height: 15.0,
          // ),

          // Shoe name
          Text(shoe.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
                fontSize: 18.0,
              )),

          // Description
          Text(
            shoe.description,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600),
          ),

          // Price
          Text('\$${shoe.price}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey.shade800)),

          // Button
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(8.0)),
              child: Text('Add to cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
