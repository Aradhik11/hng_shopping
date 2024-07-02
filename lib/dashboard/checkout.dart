import 'package:flutter/material.dart';
import 'package:hng_project/dashboard/order.dart';
import 'package:hng_project/model/product.dart';

class Checkout extends StatefulWidget {
  final List<Product> cart;
  final Function(Product) removeFromCart;
  const Checkout({required this.cart, required this.removeFromCart});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffF3F3F3),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 7,
            ),
            Expanded(
              child: ListView(
                children: widget.cart.map((product) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            product.image,
                            width: 100,
                            height: 70,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product.name),
                              const SizedBox(
                                height: 6,
                              ),
                              Text('£${product.price}'),
                              const SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 95,
                          ),
                          IconButton(
                              onPressed: () {
                                widget.removeFromCart(product);
                              },
                              icon: const Icon(
                                Icons.dangerous_outlined,
                                color: Colors.red,
                              ))
                        ],
                      ),
                      const Divider(
                        thickness: 2.2,
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  );
                }).toList(),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Order()));
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                        child: Text(
                      'Proceed',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 19),
                    ))),
              ),
            ),
            const SizedBox(
              height: 90,
            )
          ],
        ),
      ),
    );
  }
}
