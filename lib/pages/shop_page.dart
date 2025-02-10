import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/components/shoe_tile.dart';
import 'package:mini_ecommerce_appln/models/cart.dart';
import 'package:mini_ecommerce_appln/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  // Add shoe to cart
  void addToCart(BuildContext context, Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // Alert the user, shoe successfully added to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Successfully Added to Cart',
          style: TextStyle(
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        content: const Text(
          'Check your cart to proceed with checkout.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'OK',
              style: TextStyle(color: Colors.blue.shade900),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<Cart>(
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar with improved styling
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha((0.05 * 255).toInt()),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search shoes...',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey.shade700,
                  ),
                ],
              ),
            ),

            // Motivational message
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Center(
                child: Text(
                  'The Only Way Is Through',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),

            // Hot Picks Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Picks🔥',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Future functionality for "See All"
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20.0),

            // List of shoes for sale
            SizedBox(
              height: 310.0, // Ensures consistent height for the list
              child: ListView.builder(
                itemCount: value.getShoeList().length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                itemBuilder: (context, index) {
                  // Create a shoe
                  Shoe shoe = value.getShoeList()[index];

                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addToCart(context, shoe),
                  );
                },
              ),
            ),

            // Divider for separation
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Divider(thickness: 1, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
