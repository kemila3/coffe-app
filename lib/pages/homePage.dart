import 'package:coffee_shop/themes/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(padding: EdgeInsets.all(10)),
          Icon(Icons.style),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(40)),
            margin: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.person,
              size: 35,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Find the best\nCoffee to your taste",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black.withOpacity(0.3),
                          ),
                          hintText: "Search your coffee...",
                          hintStyle: TextStyle(
                              color: Colors.black.withOpacity(.3),
                              fontFamily: "Poppins"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 05,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.brown[300],
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(Icons.tune),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Espresso",
                  style: CustomStyle.style1,
                ),
                Text(
                  "Latte",
                  style: CustomStyle.style1,
                ),
                Text(
                  "Cappucino",
                  style: CustomStyle.style1,
                ),
                Text(
                  "cafeteria",
                  style: CustomStyle.style1,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  elevation: 3,
                    color: const Color.fromARGB(179, 217, 203, 203),
                    borderRadius: BorderRadius.circular(20),
                  child: Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(179, 217, 203, 203),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/Mask group.png"),
                          Text("Espresso"),
                          Text("With oat milk"),
                          Text("\$4.20"),
                                
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 3,
                    color: const Color.fromARGB(179, 217, 203, 203),
                    borderRadius: BorderRadius.circular(20),
                  child: Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(179, 217, 203, 203),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/Mask group.png"),
                          Text("Espresso"),
                          Text("With oat milk"),
                          Text("\$4.20"),
                                
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
            // GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
            //   return Container(
            //     child:
            //     Column(
            //       children: [],
            //     ),
            //   )
            // },)
          ],
        ),
      ),
    );
  }
}
