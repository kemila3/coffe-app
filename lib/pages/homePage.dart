import 'package:coffee_shop/data/coffee_items_data.dart';
import 'package:coffee_shop/pages/espressoMilkPage.dart';
import 'package:coffee_shop/themes/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
      body: SingleChildScrollView(
        child: Container(
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
              Expanded(
                child: gridViewCoffees(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Special For You",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// creating coffe card tiles using gird view
  Widget gridViewCoffees() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: .85,
      ),
      itemCount: CoffeeDataClass.coffeeData.length,
      itemBuilder: (context, index) {
        return Material(
          elevation: 3,
          color: const Color.fromARGB(179, 217, 203, 203),
          borderRadius: BorderRadius.circular(20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MilkPage()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(179, 217, 203, 203),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    CoffeeDataClass.coffeeData[index]["imageUrl"],
                    fit: BoxFit.fitWidth,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    CoffeeDataClass.coffeeData[index]["name"],
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg: CoffeeDataClass.coffeeData[index]
                                ["description"],
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.black,
                            fontSize: 16.0);
                      },
                      child: Text(
                        CoffeeDataClass.coffeeData[index]["description"],
                        overflow: TextOverflow.ellipsis,
                      )),
                  Text(
                    "\$ " + CoffeeDataClass.coffeeData[index]["price"],
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
