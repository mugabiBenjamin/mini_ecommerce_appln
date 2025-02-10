import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  const ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0, 
      height: 300.0, 
      child: Container(
        margin: const EdgeInsets.only(left: 20.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha((0.1 * 255).toInt()),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Shoe image
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                width: 160.0,
                height: 120.0, 
                child: Image.asset(
                  shoe.imagePath,
                  fit: BoxFit.contain, // Ensures the whole shoe is visible
                ),
              ),
            ),

            // Shoe name
            SizedBox(
              width: double.infinity,
              child: Text(
                shoe.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                  fontSize: 18.0,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Description
            SizedBox(
              width: double.infinity,
              child: Text(
                shoe.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Price
            Text(
              '\$${shoe.price}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.grey.shade800,
              ),
            ),

            // Button
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: double.infinity, // Make the button full width
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Add to Cart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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

