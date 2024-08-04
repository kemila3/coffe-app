import 'package:coffee_shop/pages/homePage.dart';
import 'package:coffee_shop/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/cup.png",
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Stay Focused",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "Poppins"),
            ),
            Text(
              textAlign: TextAlign.center,
              maxLines: 3,
              "Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino",
              style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: 130,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(1, 114, 89, .9),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Dive In ",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Poppins"),
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
