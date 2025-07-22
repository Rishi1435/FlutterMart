import 'package:flutter/material.dart';
import 'package:fluttermart/pages/Product_details.dart';
import 'package:fluttermart/pages/productWidget.dart';

class Shoes extends StatelessWidget {
  Shoes({super.key});
  final List<Product> shoes = [
    Product(
      name: "Nike Air Max 90",
      shortDescription: "Nike",
      price: "₹8,999",
      imageUrl: "assets/shoes/nike_airmax90.jpg",
      description:
          "The Nike Air Max 90 is a timeless classic known for its bold style and comfort. "
          "It features a visible Air unit for superior cushioning and impact protection. "
          "Durable materials and a padded collar offer all-day comfort. "
          "A must-have for sneakerheads and casual wearers alike.",
    ),
    Product(
      name: "Adidas Ultraboost 22",
      shortDescription: "Adidas",
      price: "₹11,999",
      imageUrl: "assets/shoes/adidas_ultraboost.jpg",
      description:
          "Engineered for ultimate running performance with responsive Boost cushioning. "
          "Primeknit upper wraps your foot in adaptive support and comfort. "
          "Great energy return with a sleek, sporty design. "
          "Ideal for both athletic training and casual wear.",
    ),
    Product(
      name: "Puma RS-X",
      shortDescription: "Puma",
      price: "₹6,499",
      imageUrl: "assets/shoes/puma_rsx.jpg",
      description:
          "Chunky sneakers with retro-futuristic design and bold colorways. "
          "Features RS cushioning for comfort and shock absorption. "
          "Mesh and leather upper provide breathability and durability. "
          "A trendy pick for urban style enthusiasts.",
    ),
    Product(
      name: "Reebok Nano X1",
      shortDescription: "Reebok",
      price: "₹7,799",
      imageUrl: "assets/shoes/rebook_nano.jpg",
      description:
          "Versatile training shoes made for HIIT, weightlifting, and cardio. "
          "Floatride Energy Foam delivers lightweight cushioning. "
          "Flexweave upper ensures breathable support during tough workouts. "
          "Favored by fitness lovers and athletes.",
    ),
    Product(
      name: "Skechers Go Walk",
      shortDescription: "Skechers",
      price: "₹4,299",
      imageUrl: "assets/shoes/skechers_gowalk.jpg",
      description:
          "Slip-on walking shoes with ULTRA GO cushioning for all-day comfort. "
          "Lightweight and flexible with breathable mesh upper. "
          "Ideal for casual strolls, travel, and everyday use. "
          "Combines comfort tech with effortless style.",
    ),
    Product(
      name: "Campus Oxyfit",
      shortDescription: "Campus",
      price: "₹2,299",
      imageUrl: "assets/shoes/campus_oxyfit.jpg",
      description:
          "Affordable sports shoes with breathable upper and cushioned sole. "
          "Designed for walking, jogging, and light workouts. "
          "Lightweight construction and modern design make them versatile. "
          "Perfect for daily active use on a budget.",
    ),
    Product(
      name: "Bata Power",
      shortDescription: "Bata",
      price: "₹1,599",
      imageUrl: "assets/shoes/bata_power.jpg",
      description:
          "Reliable sports shoes offering comfort and durability for everyday wear. "
          "Rubber sole ensures good grip and long-lasting use. "
          "Great for walking, school, or casual outings. "
          "Trusted Bata quality at an economical price.",
    ),
    Product(
      name: "Woodland Leather Boots",
      shortDescription: "Woodland",
      price: "₹5,999",
      imageUrl: "assets/shoes/woodland_boots.jpg",
      description:
          "Rugged leather boots built for adventure and outdoor wear. "
          "Thick sole and strong grip make them trail-ready. "
          "High ankle design offers protection and style. "
          "Combines functionality with a bold, masculine look.",
    ),
    Product(
      name: "New Balance 574",
      shortDescription: "New Balance",
      price: "₹6,999",
      imageUrl: "assets/shoes/nb_574.jpg",
      description:
          "Iconic lifestyle sneaker with ENCAP midsole cushioning. "
          "Blends classic suede and mesh for breathability and style. "
          "A go-to for casual outfits and everyday comfort. "
          "Balances heritage design with modern performance.",
    ),
    Product(
      name: "Asics Gel-Kayano 29",
      shortDescription: "Asics",
      price: "₹12,499",
      imageUrl: "assets/shoes/asics_kayano.jpg",
      description:
          "Premium stability running shoes with GEL technology for superior shock absorption. "
          "Offers excellent support for long-distance runners and overpronators. "
          "Engineered mesh upper provides breathability and structure. "
          "Trusted choice for marathoners and serious athletes.",
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
          "SHOES",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown.shade300,
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
          itemCount: shoes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 300,
          ),

          itemBuilder: (context, index) {
            return ProductCard(
              product: shoes[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            ProductDetailsScreen(product: shoes[index]),
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
