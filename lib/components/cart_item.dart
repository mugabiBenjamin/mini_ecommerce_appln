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
  // Remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.05 * 255).toInt()),
            blurRadius: 4.0,
            spreadRadius: 2.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0), 
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: SizedBox(
            width: 60.0, 
            height: 60.0, 
            child: Image.asset(
              widget.shoe.imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          widget.shoe.name,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '\$${widget.shoe.price.toStringAsFixed(2)}', // Ensures two decimal places for price
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade600,
          ),
        ),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

