import 'package:flutter/material.dart';
import 'package:fluttermart/pages/Product_details.dart';
import 'package:fluttermart/pages/productWidget.dart';

class Mobiles extends StatelessWidget {
  Mobiles({super.key});

  final List<Product> mobiles = [
    Product(
      name: "iPhone 14 Pro",
      shortDescription: "Apple",
      price: "₹1,29,900",
      imageUrl: "assets/phones/iphone14pro.jpg",
      description:
          "Apple’s iPhone 14 Pro features the powerful A16 Bionic chip and a stunning Super Retina XDR display. "
          "It introduces the Dynamic Island for a more interactive experience and a 48MP camera for high-detail shots. "
          "The device supports ProRAW, ProMotion, and cinematic mode for content creators. "
          "Perfectly blends luxury, speed, and precision engineering.",
    ),
    Product(
      name: "Samsung Galaxy S23",
      shortDescription: "Samsung",
      price: "₹74,999",
      imageUrl: "assets/phones/galaxys23.jpg",
      description:
          "The Galaxy S23 offers flagship performance with its Snapdragon 8 Gen 2 processor. "
          "It has a brilliant AMOLED 120Hz display and a powerful triple-camera setup. "
          "Samsung’s One UI enhances usability with seamless multitasking. "
          "Built for smooth gaming, sharp photography, and long-lasting power.",
    ),
    Product(
      name: "OnePlus 11R",
      shortDescription: "OnePlus",
      price: "₹39,999",
      imageUrl: "assets/phones/oneplus11r.jpg",
      description:
          "The OnePlus 11R features a Snapdragon 8+ Gen 1 processor with 120Hz AMOLED display. "
          "It offers flagship-grade performance at a mid-range price point. "
          "Fast charging and clean OxygenOS make it a power-packed choice. "
          "Ideal for users who seek speed, style, and value.",
    ),
    Product(
      name: "iQOO Z7 Pro",
      shortDescription: "iQOO",
      price: "₹23,999",
      imageUrl: "assets/phones/iqooz7pro.jpg",
      description:
          "iQOO Z7 Pro comes with a vibrant AMOLED curved display and MediaTek Dimensity 7200 processor. "
          "It supports 66W fast charging and offers excellent gaming performance. "
          "Its slim design and responsive UI make it a joy to use. "
          "Great for photography, gaming, and everyday multitasking.",
    ),
    Product(
      name: "Pixel 7A",
      shortDescription: "Google",
      price: "₹43,999",
      imageUrl: "assets/phones/pixel7a.jpg",
      description:
          "The Pixel 7A offers Google’s clean software experience with the Tensor G2 chip. "
          "It delivers incredible camera performance, especially in low light. "
          "Timely Android updates and exclusive features like Magic Eraser stand out. "
          "A compact, smart, and camera-focused Android phone.",
    ),
    Product(
      name: "Realme Narzo 60 Pro",
      shortDescription: "Realme",
      price: "₹23,999",
      imageUrl: "assets/phones/narzo60pro.jpg",
      description:
          "Narzo 60 Pro features a curved AMOLED display and Dimensity 7050 processor. "
          "It combines aesthetic design with solid mid-range performance. "
          "With a 100MP camera and fast charging, it offers great value. "
          "A stylish phone built for performance and photography.",
    ),
    Product(
      name: "Redmi Note 12 Pro",
      shortDescription: "Xiaomi",
      price: "₹24,999",
      imageUrl: "assets/phones/redmi12pro.jpg",
      description:
          "Redmi Note 12 Pro boasts a 120Hz AMOLED display and Dimensity 1080 chip. "
          "It includes a 50MP Sony IMX766 camera with OIS for excellent shots. "
          "67W turbo charging powers up quickly, and MIUI is feature-rich. "
          "A great all-rounder with flagship camera features under budget.",
    ),
    Product(
      name: "Moto Edge 40",
      shortDescription: "Motorola",
      price: "₹29,999",
      imageUrl: "assets/phones/motoedge40.jpg",
      description:
          "Moto Edge 40 features a vegan leather back and curved pOLED 144Hz display. "
          "It is powered by the Dimensity 8020 for balanced performance. "
          "The clean Android experience is a highlight for purists. "
          "A stylish yet functional device for modern users.",
    ),
    Product(
      name: "Asus ROG Phone 7",
      shortDescription: "Asus",
      price: "₹74,999",
      imageUrl: "assets/phones/rogphone7.jpg",
      description:
          "Built for gamers, the ROG Phone 7 has Snapdragon 8 Gen 2 and a 165Hz AMOLED display. "
          "It features air triggers, advanced cooling, and RGB aesthetics. "
          "Dual front-facing speakers offer immersive audio during gameplay. "
          "An ultimate gaming beast with cutting-edge hardware.",
    ),
    Product(
      name: "Vivo V29",
      shortDescription: "Vivo",
      price: "₹32,999",
      imageUrl: "assets/phones/vivov29.jpg",
      description:
          "The Vivo V29 comes with a sleek curved design and 120Hz AMOLED display. "
          "Its 50MP camera with Aura light captures great portraits. "
          "Built for content creators with strong selfies and video features. "
          "A trendy and capable mid-range smartphone for all uses.",
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
          "MOBILES",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 41, 41, 41),
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
          itemCount: mobiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 300,
          ),

          itemBuilder: (context, index) {
            return ProductCard(
              product: mobiles[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            ProductDetailsScreen(product: mobiles[index]),
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
