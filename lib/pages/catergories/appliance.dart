import 'package:flutter/material.dart';
import 'package:fluttermart/pages/Product_details.dart';
import 'package:fluttermart/pages/productWidget.dart';

class Appliance extends StatelessWidget {
  Appliance({super.key});
  final List<Product> appliances = [
    Product(
      name: "LG 190L Refrigerator",
      shortDescription: "LG",
      price: "₹17,990",
      imageUrl: "assets/appliances/lg_fridge.jpg",
      description:
          "A compact yet spacious refrigerator ideal for small families. "
          "Equipped with Smart Inverter technology for energy efficiency and silent operation. "
          "Toughened glass shelves and a moist balance crisper ensure freshness. "
          "A perfect blend of reliability, style, and practicality.",
    ),
    Product(
      name: "Samsung 6.5kg Washing Machine",
      shortDescription: "Samsung",
      price: "₹20,500",
      imageUrl: "assets/appliances/samsung_wash.jpg",
      description:
          "Fully automatic front-load washing machine with digital inverter technology. "
          "Eco Bubble and Hygiene Steam provide deep cleaning while being gentle on clothes. "
          "Smart features like delay end and child lock add convenience. "
          "Efficient, durable, and thoughtfully designed for modern homes.",
    ),
    Product(
      name: "Philips Air Fryer",
      shortDescription: "Philips",
      price: "₹8,499",
      imageUrl: "assets/appliances/philips_airfryer.jpg",
      description:
          "Enjoy guilt-free fried food using Rapid Air technology with minimal oil. "
          "The Philips Air Fryer cooks food evenly while maintaining crispness. "
          "Its compact design fits easily in any kitchen. "
          "Perfect for health-conscious and flavor-loving households.",
    ),
    Product(
      name: "IFB Microwave Oven",
      shortDescription: "IFB",
      price: "₹11,999",
      imageUrl: "assets/appliances/ifb_microwave.jpg",
      description:
          "A 25L convection microwave ideal for grilling, baking, and reheating. "
          "Features include multi-stage cooking, auto defrost, and child safety lock. "
          "Stainless steel cavity ensures uniform cooking. "
          "A must-have for versatile and easy cooking.",
    ),
    Product(
      name: "Dyson V8 Vacuum Cleaner",
      shortDescription: "Dyson",
      price: "₹34,900",
      imageUrl: "assets/appliances/dyson_v8.jpg",
      description:
          "Cordless, powerful suction and advanced filtration make cleaning effortless. "
          "Transforms into a handheld for cars, stairs, and upholstery. "
          "Up to 40 minutes of fade-free runtime and hygienic bin emptying. "
          "Premium performance for deep, hygienic, and quiet cleaning.",
    ),
    Product(
      name: "Whirlpool 1.5 Ton AC",
      shortDescription: "Whirlpool",
      price: "₹33,500",
      imageUrl: "assets/appliances/whirlpool_ac.jpg",
      description:
          "Inverter AC with 6th Sense FastCool Technology and IntelliSense inverter. "
          "Offers rapid cooling even at 52°C with low power consumption. "
          "Includes self-cleaning, HD filter, and eco mode. "
          "Energy-efficient and engineered for Indian summers.",
    ),
    Product(
      name: "Bajaj Mixer Grinder",
      shortDescription: "Bajaj",
      price: "₹2,399",
      imageUrl: "assets/appliances/bajaj_mixer.jpg",
      description:
          "A sturdy 500W mixer grinder with three jars for blending and grinding. "
          "Features easy-grip handles, anti-slip feet, and powerful stainless steel blades. "
          "Compact size makes it suitable for any kitchen. "
          "An affordable essential for daily food prep.",
    ),
    Product(
      name: "Havells Electric Kettle",
      shortDescription: "Havells",
      price: "₹1,299",
      imageUrl: "assets/appliances/havell_kettle.jpg",
      description:
          "1.2L stainless steel electric kettle with auto shut-off for safety. "
          "Boils water quickly for tea, coffee, or instant meals. "
          "360-degree swivel base and cool-touch handle add convenience. "
          "A fast, stylish, and reliable way to heat water.",
    ),
    Product(
      name: "Crompton Ceiling Fan",
      shortDescription: "Crompton",
      price: "₹2,199",
      imageUrl: "assets/appliances/crompton_fan.jpg",
      description:
          "High-speed ceiling fan with aerodynamic blades for superior air delivery. "
          "Copper motor ensures long life and efficient performance. "
          "Sleek design enhances any room’s aesthetic. "
          "Economical, reliable, and perfect for Indian summers.",
    ),
    Product(
      name: "Sony Smart LED TV 43\"",
      shortDescription: "Sony",
      price: "₹34,999",
      imageUrl: "assets/appliances/sony_tv.jpg",
      description:
          "43-inch Full HD smart TV with HDR and X-Reality PRO for crisp visuals. "
          "Runs on Google TV with built-in Chromecast and voice control. "
          "Dolby Audio ensures immersive sound. "
          "A complete home entertainment package with premium quality.",
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
          "APPLIANCES",
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
          itemCount: appliances.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 300,
          ),

          itemBuilder: (context, index) {
            return ProductCard(
              product: appliances[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            ProductDetailsScreen(product: appliances[index]),
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
