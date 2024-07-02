import 'package:flutter/material.dart';
import 'package:hng_project/dashboard/checkout.dart';
import 'package:hng_project/dashboard/home_view.dart';
import '../model/product.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  List<Product> product = [
    Product(1, 'food1', 'assets/food2.jpg', 10.00),
    Product(2, 'food2', 'assets/food3.jpg', 50.00),
    Product(3, 'food3', 'assets/food4.jpg', 90.00),
  ];

  List<Product> cart = [];
  addToCart(Product product) {
    if (cart.contains(product)) {
    } else {
      cart.add(product);
    }

    setState(() {});
  }

  void removeFromCart(Product product) {
    cart.remove(product);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeView(product: product, addToCart: addToCart),
          Checkout(cart: cart, removeFromCart: removeFromCart)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.production_quantity_limits,
                color: _currentIndex == 0 ? Color(0xfff0c100) : null,
              ),
              label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_outlined,
                color: _currentIndex == 1 ? Color(0xfff0c100) : null,
              ),
              label: 'Checkout'),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xfff0c100),
        onTap: (int newValue) {
          setState(() {
            _currentIndex = newValue;
            switch (_currentIndex) {
              case 0:
                break;
              case 1:
                break;

              default:
                print('no cases');
            }
          });
        },
      ),
    );
  }
}
