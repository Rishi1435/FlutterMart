// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fluttermart/pages/CategoryCard.dart';
import 'package:fluttermart/pages/catergories/appliance.dart';
import 'package:fluttermart/pages/catergories/books.dart';
import 'package:fluttermart/pages/catergories/fashion.dart';
import 'package:fluttermart/pages/catergories/mobiles.dart';
import 'package:fluttermart/pages/catergories/shoe.dart';
import 'package:fluttermart/pages/catergories/watches.dart';
import 'package:fluttermart/pages/splashScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(fluttermart());
}

class fluttermart extends StatelessWidget {
  const fluttermart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/mobiles': (context) => Mobiles(),
        '/books': (context) => Books(),
        '/shoes': (context) => Shoes(),
        '/fashion': (context) => Fashion(),
        '/appliance': (context) => Appliance(),
        '/watches': (context) => Watches(),
      },
      theme: ThemeData(fontFamily: 'Breath_Demo'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  final List<String> categories = [
    'Clothing',
    'Shoes',
    'Mobiles',
    'Watches',
    'Home Appliances',
    'Books',
  ];
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //carousel list
  final List<String> carouselImages = [
    'assets/carouselBanners/NikeSale.jpg',
    'assets/carouselBanners/casio.jpg',
    'assets/carouselBanners/blackFridaySale.jpg',
    'assets/carouselBanners/samsung s24 sale.jpg',
    'assets/carouselBanners/WatchSale.jpg',
    'assets/carouselBanners/womenWatch.jpg',
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 710,
            pinned: true,
            backgroundColor: Color.fromARGB(255, 15, 15, 15),
            toolbarHeight: 50,
            leading: Lottie.asset(
              'assets/logo/splashScreenAnimation.json',
              height: 70,
              width: 70,
              alignment: Alignment(1, 1),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                iconSize: 30,
              ),
              SizedBox(width: 20),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  CarouselSlider(
                    items:
                        carouselImages.map((url) {
                          return Image.asset(
                            url,
                            fit: BoxFit.contain,
                            width: double.infinity,
                          );
                        }).toList(),
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: MediaQuery.of(context).size.height,
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                      autoPlayInterval: const Duration(seconds: 4),
                      autoPlayAnimationDuration: const Duration(
                        milliseconds: 800,
                      ),
                      autoPlayCurve: Curves.easeInOut,
                      onPageChanged: (index, reason) {
                        setState(() => _currentIndex = index);
                      },
                    ),
                  ),

                  // Overlay UI
                  // ignore: duplicate_ignore
                  // ignore: deprecated_member_use
                  Container(color: Colors.black.withOpacity(0.4)),
                  Positioned(
                    top: 40,
                    left: 55,
                    child: Text(
                      'Flutter Mart',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        fontSize: 30,
                        fontFamily: 'Breath_Demo',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 16,
                    right: 16,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for products...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Text(
                          'Scroll to view categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Breath_Demo',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                          size: 28,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              carouselImages.asMap().entries.map((entry) {
                                return Container(
                                  width: 8,
                                  height: 8,
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        _currentIndex == entry.key
                                            ? Colors.white
                                            : Colors.white38,
                                  ),
                                );
                              }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 10),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment(-0.8, -1),
                  child: Text(
                    'CATEGORIES',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Breath_Demo',
                    ),
                  ),
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      categoryName: widget.categories[index],
                      imagePath:
                          'assets/categories/${widget.categories[index]}.png',
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black87,
        selectedLabelStyle: TextStyle(
          fontFamily: "Breath_Demo",
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: "Breath_Demo",
          fontWeight: FontWeight.bold,
        ),
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
