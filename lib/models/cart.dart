import 'package:flutter/material.dart';
import 'package:mini_ecommerce_appln/models/shoe.dart';

class Cart extends ChangeNotifier {
  // List of item for sale
  List<Shoe> shoeShop = [
    Shoe(
        'UA Charged Assert 10',
        'assets/img/UA-Charged-Assert-10.jpg',
        'A versatile athletic shoe designed for running and training. Features',
        556.99),
    Shoe(
        'UA Charged Bandit Trail 3',
        'assets/img/UA-Charged-Bandit-Trail-3.jpg',
        'Features Charged Cushioning for comfort and support',
        488.99),
    Shoe('UA Charged Rogue 4', 'assets/img/UA-Charged-Rogue-4.jpg',
        'Balances comfort and speed on the run', 500.99),
    Shoe('Curry Flow 9', 'assets/img/UA-Curry-Flow-9.jpg',
        'Endorsed by Stephen Curry, known for speed and agility', 771.99),
    Shoe('UA Drift Rn Mineral', 'assets/img/UA-Drift-Rn-Mineral.jpg',
        'Features a sleek design suitable for everyday use', 599.00),
    Shoe('UA Hightlight TM', 'assets/img/UA-Highlight-TM.jpg',
        'High-top cleats providing ankle support and traction', 800.00),
    Shoe('UA HOVR Drive Pro', 'assets/img/UA-HOVR-Drive-Pro.jpg',
        'Blends performance technology with everyday style', 765.00),
    Shoe('UA HOVR Phantom 3 SE', 'assets/img/UA-HOVR-Phantom-3-SE.jpg',
        'Known for its cushioning and energy return', 687.99),
    Shoe('UA HOVR Sonic 4', 'assets/img/UA-HOVR-Sonic-4.jpg',
        'Offers a lightweight fit and responsiveness', 700.50),
    Shoe('UA Lock Down 7', 'assets/img/UA-Lock-Down-7.jpg',
        'Focused on stability and support during play', 667.99),
    Shoe('UA Magnetico Pro 3', 'assets/img/UA-Magnetico-Pro-3.jpg',
        'Offers a soft feel and excellent ball control', 556.80),
    Shoe('UA Micro G Pursuit BP', 'assets/img/UA-Micro-G-Pursuit-BP.jpg',
        'Features a responsive midsole for dynamic movements.', 600.00),
    Shoe('UA Phantom 4', 'assets/img/UA-Phantom-4.jpg',
        'Lightweight with a focus on speed and control on the field', 777.99),
    Shoe(
        'UA Project Rock 3',
        'assets/img/UA-Project-Rock-3.jpg',
        'A collaboration with Dwayne Johnson, versatile for various workouts',
        992.00),
    Shoe('UA Slingride 2', 'assets/img/UA-Slingride-2.jpg',
        'Lightweight and flexible, great for casual wear', 762.99),
    Shoe('UA Speedform SS17', 'assets/img/UA-Speedform-SS17.jpg',
        'Focuses on a snug fit for enhanced performance', 810.00),
    Shoe(
        'UA Spotlight Clone 3.0 MC',
        'assets/img/UA-Spotlight-Clone-3.0-MC.jpg',
        'Designed for explosive speed and stability',
        911.00),
    Shoe(
        'UA TriBase Reign 6',
        'assets/img/UA-TriBase-Reign-6.jpg',
        'Designed for stability during weightlifting and cross-training',
        755.99),
    Shoe(
        'UA Valsetz RTS',
        'assets/img/UA-Valsetz-RTS.jpg',
        'A tactical boot that’s durable and comfortable for outdoor activities.',
        1000.00),
  ];

  // List of items in your cart
  List<Shoe> useCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart() {
    return useCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    useCart.add(shoe);
    notifyListeners();
  }

  // remove items from the cart
  void removeItemToCart(Shoe shoe) {
    useCart.remove(shoe);
    notifyListeners();
  }
}
