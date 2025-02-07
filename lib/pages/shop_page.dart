import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/components/shoe_tile.dart';
import 'package:mini_ecommerce_appln/models/cart.dart';
import 'package:mini_ecommerce_appln/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  // final Shoe shoe;
  const ShopPage({super.key}); // removed required this.shoe

  // Addd shoe to cart
  void addToCart(BuildContext context, Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // Alert the user, shoe successfully added to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Successfully added to cart',
          style: TextStyle(
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        content: Text(
          'Check your cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.grey.shade700,
                        ),
                      ]),
                ),

                // message
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'The Only Way Is Through',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),

                // hot picks
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Hot pics🔥',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0)),
                      Text('See all',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),

                // List of shoes for sale
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getShoeList().length,
                    scrollDirection: Axis.horizontal,
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

                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
