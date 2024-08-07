import 'package:coffee_shop/pages/orderPage.dart';
import 'package:flutter/material.dart';

class MilkPage extends StatelessWidget {
  const MilkPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Container(
    //     padding: EdgeInsets.only(top: 30, right: 10, left: 10),
    //     child: Stack(
    //       children: [
    //         Image.asset(
    //           width: MediaQuery.of(context).size.width,
    //           "assets/images/Rectangle 24.png",
    //           fit: BoxFit.cover,
    //         ),
    //         Container(
    //           padding: EdgeInsets.only(top: 30, left: 10, right: 10),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Container(
    //                 padding: EdgeInsets.all(5),
    //                 decoration: BoxDecoration(
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.circular(40)),
    //                 child: GestureDetector(
    //                   onTap: () {
    //                     Navigator.pop(context);
    //                   },
    //                   child: Icon(
    //                     Icons.arrow_back_ios,
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ),
    //               Container(
    //                 padding: EdgeInsets.all(5),
    //                 decoration: BoxDecoration(
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.circular(40)),
    //                 child: Icon(
    //                   Icons.favorite_rounded,
    //                   color: Colors.red,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           padding: EdgeInsets.only(left: 30,right: 30),
    //           height: MediaQuery.of(context).size.height / 2,
    //           alignment: Alignment.bottomCenter,
    //           child: Row(

    //             children: [
    //               Column(
    //                 mainAxisAlignment: MainAxisAlignment.end,
    //                 children: [
    //                   Text(
    //                     "Espresso",
    //                   ),
    //                 ],
    //               ),
    //               Spacer(),
    //               Column(
    //                 mainAxisAlignment: MainAxisAlignment.end,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Icon(Icons.coffee,),
    //                       Icon(Icons.water_drop),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomAppBar(
          // elevation: 3,
          // shadowColor: Colors.red,
          color: Colors.amber.shade100,
          // shape: ,
          // shadowColor: const Color.fromARGB(255, 173, 43, 43),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          fontFamily: "Poppins", fontWeight: FontWeight.bold),
                    ),
                    Text("\$ 4.5")
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderPage()));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 13, horizontal: 100),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          maxLines: 1,
                          "Buy Now",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Details",
                    style: TextStyle(
                        fontFamily: "Poppins", fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.red,
                width: MediaQuery.of(context).size.width,
                // width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Image.asset(
                  "assets/images/Rectangle 24.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.brown.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Espresso",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            "With Oat Milk",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 13),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "4.8",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(" (240)"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Icon(Icons.coffee),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Icon(Icons.coffee),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Description",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 05,
              ),
              const Text(
                "Size",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30,

                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "S",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30,

                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "M",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
                          // padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "L",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Expanded(
              //   child: Row(
              //     children: [
              //       Text("HUMM")
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
