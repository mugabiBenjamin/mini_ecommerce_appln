import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/models/cart.dart';
import 'package:mini_ecommerce_appln/models/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0), // wasn't there
        leading: Image.asset(
          widget.shoe.imagePath,
        ),

        title: Text(widget.shoe.name,
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold)),
        subtitle: Text('\$${widget.shoe.price.toString()}',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey.shade600)),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class TypeStyle {}
