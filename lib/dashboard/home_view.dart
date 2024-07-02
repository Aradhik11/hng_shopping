import 'package:flutter/material.dart';
import 'package:hng_project/model/product.dart';

class HomeView extends StatefulWidget {
  final List<Product> product;
  final Function(Product) addToCart;
  const HomeView({super.key, required this.product, required this.addToCart});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('HNG Shopping Mall'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Most Purchased',
                      style:
                          TextStyle(fontSize: 21, color: Color(0xff797979)))),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: widget.product.map((product) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Container(
                          width: 150,
                          height: 206,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Image.asset(
                                  product.image,
                                  width: 100,
                                  height: 70,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  product.name,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '£ ${product.price}',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xfff0c100),
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    widget.addToCart(product);
                                  },
                                  child: const Text('ADD TO CART'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text('Regular',
                      style:
                          TextStyle(fontSize: 21, color: Color(0xff797979)))),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: widget.product.map((product) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Container(
                          width: 150,
                          height: 206,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Image.asset(
                                  product.image,
                                  width: 100,
                                  height: 70,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  product.name,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '£ ${product.price}',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xfff0c100),
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    widget.addToCart(product);
                                  },
                                  child: const Text('ADD TO CART'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
