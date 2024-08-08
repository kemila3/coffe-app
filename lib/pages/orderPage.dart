import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 70, right: 70),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 142, 139, 132),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(top: 5,left: 5),
                      // width: 100,
                      decoration: BoxDecoration(
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Deliver",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Pick Up",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    "13/2/A,",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)),
                        child: Row(
                          children: [
                            Icon(Icons.edit_note),
                            Text(
                              "Edit access",
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black26)),
                        child: Row(
                          children: [
                            Icon(Icons.note),
                            Text(
                              "Add Note",
                              style: TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45),
              child: IntrinsicHeight(
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            width: 80,
                            height: 80,
                            "assets/images/Rectangle 24.png",
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Espresso",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "with chocolate",
                          style: TextStyle(
                            fontFamily: "Poppins",
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.add),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
