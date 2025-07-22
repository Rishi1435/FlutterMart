import 'package:flutter/material.dart';
import 'package:fluttermart/pages/Product_details.dart';
import 'package:fluttermart/pages/productWidget.dart';

class Fashion extends StatelessWidget {
  Fashion({super.key});
  final List<Product> fashionItems = [
    Product(
      name: "Denim Jacket",
      shortDescription: "Levi's",
      price: "₹3,499",
      imageUrl: "assets/cloths/denim_kacket.jpg",
      description:
          "Classic Levi’s denim jacket with a timeless silhouette. "
          "Crafted from premium quality denim for durability and comfort. "
          "Perfect for layering in all seasons, whether casual or stylish. "
          "Features button-up closure, chest pockets, and authentic Levi’s shortDescription.",
    ),
    Product(
      name: "Floral Maxi Dress",
      shortDescription: "ONLY",
      price: "₹2,299",
      imageUrl: "assets/cloths/floral_dress.jpg",
      description:
          "Elegant floral maxi dress designed for breezy comfort. "
          "Made from lightweight, breathable fabric perfect for warm days. "
          "Features a flattering silhouette with a cinched waist and flowing skirt. "
          "Ideal for casual outings, brunches, and vacation wardrobes.",
    ),
    Product(
      name: "Men’s Slim Fit Blazer",
      shortDescription: "Allen Solly",
      price: "₹4,999",
      imageUrl: "assets/cloths/allen_solly_blazer.jpg",
      description:
          "Stylish slim-fit blazer crafted for modern professionals. "
          "Tailored with precision to offer a sharp, structured look. "
          "Made from premium fabric for all-day comfort and confidence. "
          "Perfect for business meetings, formal events, or date nights.",
    ),
    Product(
      name: "Women’s Casual Kurti",
      shortDescription: "Biba",
      price: "₹1,599",
      imageUrl: "assets/cloths/biba_kurti.jpg",
      description:
          "Comfortable and elegant casual kurti for everyday wear. "
          "Features a beautiful print with a flattering straight-cut design. "
          "Made from breathable cotton fabric, ideal for Indian summers. "
          "Pair it with leggings, palazzos, or jeans for versatile styling.",
    ),
    Product(
      name: "Graphic T-Shirt",
      shortDescription: "H&M",
      price: "₹799",
      imageUrl: "assets/cloths/hm_tshirt.jpg",
      description:
          "Trendy graphic t-shirt with bold design and soft cotton feel. "
          "Ideal for making a style statement on casual days. "
          "Comes with a relaxed fit and round neck for everyday comfort. "
          "Can be paired with jeans or shorts for a laid-back look.",
    ),
    Product(
      name: "Men’s Chinos",
      shortDescription: "Roadster",
      price: "₹1,199",
      imageUrl: "assets/cloths/roadster_chinos.jpg",
      description:
          "Versatile slim-fit chinos designed for daily and smart casual wear. "
          "Made from soft, stretchable fabric that ensures comfort. "
          "Neutral color that pairs easily with shirts, tees, or polos. "
          "Perfect wardrobe staple for college, office, or casual outings.",
    ),
    Product(
      name: "Winter Hoodie",
      shortDescription: "Zara",
      price: "₹2,999",
      imageUrl: "assets/cloths/zara_hoodie.jpg",
      description:
          "Warm and stylish hoodie for cold weather layering. "
          "Crafted from a soft fleece material for cozy insulation. "
          "Features a front pocket and adjustable drawstring hood. "
          "Minimalist design makes it ideal for everyday winter wear.",
    ),
    Product(
      name: "Ankle-Length Jeans",
      shortDescription: "Pepe Jeans",
      price: "₹2,499",
      imageUrl: "assets/cloths/pepe_jeans.jpg",
      description:
          "Trendy ankle-length jeans with a modern slim fit. "
          "Made from stretch denim for ease of movement and comfort. "
          "Subtle fading and classic five-pocket styling enhance the look. "
          "Great for daily wear, outings, or pairing with sneakers or boots.",
    ),
    Product(
      name: "Embroidered Saree",
      shortDescription: "FabIndia",
      price: "₹3,999",
      imageUrl: "assets/cloths/fabindia_saree.jpg",
      description:
          "Graceful hand-embroidered saree with rich ethnic detail. "
          "Crafted from premium fabric, suitable for festive and formal wear. "
          "Delicate threadwork and elegant drape give it a regal appearance. "
          "Includes matching blouse piece to complete the traditional look.",
    ),
    Product(
      name: "Formal White Shirt",
      shortDescription: "Van Heusen",
      price: "₹1,299",
      imageUrl: "assets/cloths/vanheusen_shirt.jpg",
      description:
          "Crisp and classy white shirt for formal and semi-formal settings. "
          "Tailored fit that complements a modern professional look. "
          "Soft and breathable fabric ensures comfort throughout the day. "
          "Ideal for office, interviews, or pairing under a blazer or suit.",
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
          "CLOTHING",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 34, 22, 22),
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
          itemCount: fashionItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 300,
          ),

          itemBuilder: (context, index) {
            return ProductCard(
              product: fashionItems[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            ProductDetailsScreen(product: fashionItems[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
      backgroundColor: Colors.grey.shade300,
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
