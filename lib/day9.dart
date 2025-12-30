import 'package:flutter/material.dart';

class Day09 extends StatefulWidget {
  const Day09({super.key});

  @override
  State<Day09> createState() => _Day09State();
}

class _Day09State extends State<Day09> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Day 09",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: (Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Choose your plan",
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Find the plan that's right for you",
                style: TextStyle(color: Colors.grey, fontSize: 25),
              ),
              SizedBox(height: 38),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  PriceCard(
                    title: "Basic",
                    price: 19,
                    features: ["10 projects", "5GB Storage", "Basic Support"],
                  ),
                  SizedBox(width: 20),
                  PriceCard(
                    title: "Pro",
                    price: 39,
                    isPopular: true,
                    features: [
                      "50 projects",
                      "50GB Storage",
                      "Priority Support",
                    ],
                  ),
                  SizedBox(width: 20),
                  PriceCard(
                    title: "Enterprise",
                    price: 89,
                    features: [
                      "Unlimited projects",
                      "200GB Storage",
                      "24/7 Support",
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/day10'),
        label: Text("Day 10"),
        icon: Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  // Widget priceCard(
  //   String title,
  //   int price,
  //   List<String> features, {
  //   bool isPopular = false,
  // }) {
  //   return GestureDetector(
  //     onTapDown: (_) => setState(() => isTapped = true),
  //     onTapUp: (_) => setState(() => isTapped = false),
  //     onTapCancel: () => setState(() => isTapped = false),
  //     child: Stack(
  //       // clipBehavior: Clip.none,
  //       children: [
  //         Container(
  //           width: 230,
  //           padding: EdgeInsets.all(20),
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(16),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.black,
  //                 blurRadius: 15,
  //                 offset: Offset(0, 8),
  //               ),
  //             ],
  //           ),
  //           child: Column(
  //             children: [
  //               Text(
  //                 title,
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //               ),
  //               SizedBox(height: 12),
  //               RichText(
  //                 text: TextSpan(
  //                   text: "\$",
  //                   style: TextStyle(fontSize: 18, color: Colors.blue),
  //                   children: [
  //                     TextSpan(
  //                       text: price.toString(),
  //                       style: TextStyle(
  //                         fontSize: 40,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.black,
  //                       ),
  //                     ),
  //                     TextSpan(
  //                       text: "dollar",
  //                       style: TextStyle(color: Colors.grey),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(height: 20),
  //               for (var feature in features)
  //                 Padding(
  //                   padding: EdgeInsetsGeometry.symmetric(vertical: 6),
  //                   child: Row(
  //                     children: [
  //                       Icon(Icons.check_circle, color: Colors.blue, size: 18),
  //                       SizedBox(width: 8),
  //                       Text(feature),
  //                     ],
  //                   ),
  //                 ),
  //               SizedBox(height: 20),
  //               SizedBox(
  //                 width: double.infinity,
  //                 height: 45,
  //                 child: ElevatedButton(
  //                   onPressed: () {},
  //                   style: ElevatedButton.styleFrom(
  //                     backgroundColor: Colors.blue,
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadiusGeometry.circular(10),
  //                     ),
  //                   ),
  //                   child: Text("Get Started"),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         if (isPopular)
  //           Positioned(
  //             top: -5,
  //             left: 0,
  //             right: 0,
  //             child: ElevatedButton(
  //               onPressed: () {},
  //               style: ElevatedButton.styleFrom(
  //                 backgroundColor: Colors.blue,
  //                 shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadiusGeometry.circular(10),
  //                 ),
  //               ),
  //               child: Text("Most Popular"),
  //             ),
  //             // Container(
  //             //   padding: EdgeInsets.symmetric(vertical: 6),
  //             //   decoration: BoxDecoration(
  //             //     color: Colors.blue,
  //             //     borderRadius: BorderRadius.circular(12),
  //             //   ),
  //             //   child: Center(
  //             //     child: Text(
  //             //       "Most Popular",
  //             //       style: TextStyle(color: Colors.white),
  //             //     ),
  //             //   ),
  //             // ),
  //           ),
  //       ],
  //     ),
  //   );
  // }
}

class PriceCard extends StatefulWidget {
  final String title;
  final int price;
  final List<String> features;
  final bool isPopular;

  const PriceCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    this.isPopular = false,
  });

  @override
  State<PriceCard> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isTapped = true),
      onTapUp: (_) => setState(() => isTapped = false),
      onTapCancel: () => setState(() => isTapped = false),

      child: AnimatedScale(
        duration: const Duration(milliseconds: 150),
        scale: isTapped ? 0.96 : 1,

        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 230,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  RichText(
                    text: TextSpan(
                      text: "\$ ",
                      style: const TextStyle(fontSize: 18, color: Colors.blue),
                      children: [
                        TextSpan(
                          text: widget.price.toString(),
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const TextSpan(
                          text: " dollar",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  for (var feature in widget.features)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Text(feature, style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            if (widget.isPopular)
              Positioned(
                top: -14,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Most Popular",
                      style: TextStyle(color: Colors.white),
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
