import 'package:flutter/material.dart';
import 'package:hng_project/dashboard/dashboard.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              const Text('It was a',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Chillax',
                      fontSize: 19)),
              const Text('Success!!!',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Chillax',
                      fontSize: 19)),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text:
                            'Congratulations!  your transaction was successful',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Chillax',
                            fontSize: 15),
                        children: [
                          TextSpan(
                              text: '\nWe thrive !!!',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          // TextSpan(
                          //     text:
                          //         'using your registered phone number to get your NIN. It attract a  service charge of N20.',
                          //     style: TextStyle(color: Pallete.blackColor)),
                        ])),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
                child: Container(
                  // padding: EdgeInsets.symmetric(horizontal: 17,vertical: 7),
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      'Done',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
