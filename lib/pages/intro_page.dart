import 'package:clone/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    const grey = Color.fromARGB(255, 106, 105, 105);
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.all(55.0),
              child: Image.asset(
                'lib/nike_images/logo.png',
                height: 240,
              ),
            ),
            const SizedBox(height: 49),
            // titile
            const Text(
              'Just Do It',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 20),
            // sub-title
            const Text(
              'Brand new sneakers and custom kicks with premium quality',
              style: TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 18, color: grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Start now button
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
