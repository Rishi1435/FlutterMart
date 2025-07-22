import 'package:flutter/material.dart';
import 'package:fluttermart/pages/Product_details.dart';
import 'package:fluttermart/pages/productWidget.dart';

class Watches extends StatelessWidget {
  Watches({super.key});
  final List<Product> watches = [
    Product(
      name: "Fossil Gen 6 Smartwatch",
      shortDescription: "Fossil",
      price: "₹24,999",
      imageUrl: "assets/watches/fossil_gen6.jpg",
      description:
          "The Fossil Gen 6 combines style and functionality with Wear OS by Google. "
          "It features fast charging, heart rate tracking, SpO2 monitoring, and voice assistant support. "
          "Powered by Snapdragon Wear 4100+, it ensures smoother performance. "
          "Ideal for those who want a smart yet elegant wrist companion.",
    ),
    Product(
      name: "Apple Product SE (2nd Gen)",
      shortDescription: "Apple",
      price: "₹29,900",
      imageUrl: "assets/watches/apple_watch_se.jpg",
      description:
          "An affordable Apple Product with essential features like crash detection and heart rate monitoring. "
          "Powered by the same chip as Series 8 for fast performance. "
          "Supports notifications, workouts, and seamless connectivity with iPhone. "
          "A perfect entry point into the Apple ecosystem.",
    ),
    Product(
      name: "Samsung Galaxy Product 6",
      shortDescription: "Samsung",
      price: "₹27,499",
      imageUrl: "assets/watches/galaxy_watch6.jpg",
      description:
          "Premium smartwatch with AMOLED display and advanced health tracking. "
          "Features body composition analysis, ECG, and sleep coaching. "
          "Runs on Wear OS with Google apps and Samsung’s sleek UI. "
          "Combines fitness intelligence with cutting-edge tech.",
    ),
    Product(
      name: "Noise ColorFit Pro 4",
      shortDescription: "Noise",
      price: "₹2,999",
      imageUrl: "assets/watches/noise_pro4.jpg",
      description:
          "Affordable smartwatch with 1.72” display and 60+ sports modes. "
          "Tracks heart rate, SpO2, and sleep with customizable watch faces. "
          "IP68 water resistance and 7-day battery life add practicality. "
          "A great entry-level choice for fitness tracking.",
    ),
    Product(
      name: "Boat Xtend",
      shortDescription: "boAt",
      price: "₹1,799",
      imageUrl: "assets/watches/boat_xtend.jpg",
      description:
          "Feature-rich smartwatch with Alexa built-in and vivid color display. "
          "Tracks heart rate, stress, and sleep with multiple watch faces. "
          "Offers 14 sports modes and 7-day battery backup. "
          "A budget-friendly yet capable wearable for everyday use.",
    ),
    Product(
      name: "Fire-Boltt Visionary",
      shortDescription: "Fire-Boltt",
      price: "₹2,499",
      imageUrl: "assets/watches/firebolt.jpg",
      description:
          "Bluetooth calling smartwatch with high-resolution AMOLED display. "
          "Includes voice assistant, 100+ sports modes, and health monitoring. "
          "Sturdy metal body and stylish design suit all occasions. "
          "Delivers strong value and premium features at a great price.",
    ),
    Product(
      name: "Titan Neo Splash",
      shortDescription: "Titan",
      price: "₹4,495",
      imageUrl: "assets/watches/titan_neo.jpg",
      description:
          "Analog watch with a bold, water-resistant design perfect for casual wear. "
          "Stainless steel build and precise quartz movement ensure reliability. "
          "Offers a timeless look with durable construction. "
          "Great for those who prefer classic timepieces.",
    ),
    Product(
      name: "Casio G-Shock",
      shortDescription: "Casio",
      price: "₹6,499",
      imageUrl: "assets/watches/gshock.jpg",
      description:
          "Legendary toughness in a sporty design that resists shocks, water, and mud. "
          "Digital-analog display with multiple time zones and stopwatch. "
          "Ideal for adventure, sports, and daily rugged use. "
          "A cult favorite for outdoor enthusiasts and style lovers alike.",
    ),
    Product(
      name: "Fastrack Reflex Beat",
      shortDescription: "Fastrack",
      price: "₹1,595",
      imageUrl: "assets/watches/fastrack_beat.jpg",
      description:
          "Lightweight fitness band with heart rate tracking and step counter. "
          "Features call & SMS alerts, sleep tracking, and a bright display. "
          "IPX6 water resistance keeps it safe during workouts. "
          "Youthful design meets practical health features at a low price.",
    ),
    Product(
      name: "Garmin Forerunner 45",
      shortDescription: "Garmin",
      price: "₹19,990",
      imageUrl: "assets/watches/garmin_45.jpg",
      description:
          "A runner’s companion with built-in GPS, heart rate monitoring, and training plans. "
          "Lightweight design and long battery life make it ideal for long sessions. "
          "Tracks pace, distance, and stress with precision. "
          "Engineered for serious athletes and fitness-focused users.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder:
              (context) => InkWell(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    SizedBox(width: 8), // spacing from the left edge
                    Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                    Text(
                      "Back",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
        ),
        title: Text(
          "WATCHES",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 103, 103, 103),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: watches.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 300,
          ),

          itemBuilder: (context, index) {
            return ProductCard(
              product: watches[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            ProductDetailsScreen(product: watches[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontFamily: "Breath_Demo",
          fontWeight: FontWeight.bold,
        ),
        selectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontFamily: "Breath_Demo",
          fontWeight: FontWeight.bold,
        ),
        unselectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/wired-flat-63-home-hover-partial-roll.gif',
              height: 30,
              width: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/wired-flat-21-avatar-in-reveal.gif',
              height: 30,
              width: 30,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
