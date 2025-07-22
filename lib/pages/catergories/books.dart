import 'package:flutter/material.dart';
import 'package:fluttermart/pages/productWidget.dart';

import '../Product_details.dart';

class Books extends StatelessWidget {
  Books({super.key});
  final List<Product> books = [
    Product(
      name: "Project Hail Mary",
      shortDescription: "Andy Weir",
      price: '₹180.50',
      imageUrl: "assets/books/book2.jpg",
      description:
          "A lone astronaut wakes up in deep space with no memory of who he is or how he got there. "
          "He must save Earth from an extinction-level event with only his wits and a surprising alien companion. "
          "Andy Weir crafts a sci-fi survival tale packed with scientific ingenuity and humor. "
          "A thrilling and surprisingly emotional interstellar adventure.",
    ),

    Product(
      name: "Atomic Habits",
      shortDescription: "James Clear",
      price: '₹200.00',
      imageUrl: "assets/books/book4.jpg",
      description:
          "This practical guide reveals how small habits compound into remarkable results over time. "
          "James Clear explains actionable strategies to build good habits and break bad ones. "
          "He emphasizes identity change, habit stacking, and environment design. "
          "A transformative manual for personal growth and sustained success.",
    ),
    Product(
      name: "The Alchemist",
      shortDescription: "Paulo Coelho",
      price: '₹125.75',
      imageUrl: "assets/books/book5.jpg",
      description:
          "Santiago, a young shepherd, embarks on a journey to find his personal legend and hidden treasure. "
          "Along the way, he learns profound lessons about destiny, love, and spiritual growth. "
          "Paulo Coelho's allegorical tale inspires readers to follow their dreams. "
          "A timeless novel about purpose and the pursuit of fulfillment.",
    ),
    Product(
      name: "Romeo and Juliet",
      shortDescription: "William Shakespeare",
      price: '₹190.50',
      imageUrl: "assets/books/book9.jpg",
      description:
          "Shakespeare’s classic tragedy tells the tale of two star-crossed lovers from feuding families. "
          "Their intense romance leads to a dramatic and heartbreaking end. "
          "This play explores themes of love, fate, youth, and family loyalty. "
          "An enduring piece of literature taught and loved for centuries.",
    ),
    Product(
      name: "Pride and Prejudice",
      shortDescription: "Jane Austen",
      price: '₹110.25',
      imageUrl: "assets/books/book10.jpg",
      description:
          "Elizabeth Bennet navigates social expectations and personal pride in 19th-century England. "
          "Her evolving relationship with Mr. Darcy reveals wit, love, and character growth. "
          "Jane Austen’s novel is a blend of romance, satire, and strong female perspective. "
          "A timeless critique of class, gender, and first impressions.",
    ),
    Product(
      name: "Dune",
      shortDescription: "Frank Herbert",
      price: '₹169.99',
      imageUrl: "assets/books/book6.jpg",
      description:
          "In a desert world where spice is power, Paul Atreides rises as a messianic figure among warring factions. "
          "The book explores themes of politics, ecology, religion, and destiny. "
          "Frank Herbert’s masterpiece defined the modern science fiction genre. "
          "A rich, expansive epic with intricate world-building and philosophical depth.",
    ),
    Product(
      name: "Circe",
      shortDescription: "Madeline Miller",
      price: '₹179.00',
      imageUrl: "assets/books/book7.jpg",
      description:
          "Circe, the daughter of Helios, is banished to an island where she discovers her own power as a witch. "
          "She defies gods and men, forging her identity in a male-dominated mythos. "
          "A lyrical reimagining of Greek mythology from a feminist perspective. "
          "Madeline Miller brings depth and humanity to a legendary figure.",
    ),
    Product(
      name: "Can We Be Stranger Again?",
      shortDescription: "Shandilya Shrijeet",
      price: '₹189.00',
      imageUrl: "assets/books/book8.jpg",
      description:
          "A story of love, heartbreak, and rediscovery told through deeply emotional prose. "
          "The characters navigate the fragile aftermath of a broken relationship. "
          "Shrijeet captures the ache of letting go and the beauty of self-healing. "
          "A poetic, relatable read for anyone who's loved and lost.",
    ),
    Product(
      name: "Romeo and Juliet",
      shortDescription: "William Shakespeare",
      price: '₹190.50',
      imageUrl: "assets/books/book9.jpg",
      description:
          "Shakespeare’s classic tragedy tells the tale of two star-crossed lovers from feuding families. "
          "Their intense romance leads to a dramatic and heartbreaking end. "
          "This play explores themes of love, fate, youth, and family loyalty. "
          "An enduring piece of literature taught and loved for centuries.",
    ),
    Product(
      name: "Pride and Prejudice",
      shortDescription: "Jane Austen",
      price: '₹110.25',
      imageUrl: "assets/books/book10.jpg",
      description:
          "Elizabeth Bennet navigates social expectations and personal pride in 19th-century England. "
          "Her evolving relationship with Mr. Darcy reveals wit, love, and character growth. "
          "Jane Austen’s novel is a blend of romance, satire, and strong female perspective. "
          "A timeless critique of class, gender, and first impressions.",
    ),
    Product(
      name: "The Midnight Library",
      shortDescription: "Matt Haig",
      price: '₹159.99',
      imageUrl: "assets/books/book1.jpg",
      description:
          "A woman stuck between life and death discovers a library filled with infinite lives she could’ve lived. "
          "Each book contains an alternate version of her story, shaped by choices big and small. "
          "Matt Haig blends fantasy with heartfelt emotion and philosophical depth. "
          "A powerful reminder about regret, possibility, and embracing the life we have.",
    ),
    Product(
      name: "Where the Crawdads Sing",
      shortDescription: "Delia Owens",
      price: '₹140.25',
      imageUrl: "assets/books/book3.jpg",
      description:
          "Set in the wild marshes of North Carolina, the novel follows Kya, a girl abandoned by her family. "
          "Raised in solitude, she develops a deep connection with nature but becomes a murder suspect. "
          "Blending romance, mystery, and lyrical nature writing, it's an evocative story of resilience. "
          "An exploration of loneliness, belonging, and the power of the natural world.",
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
          "BOOKS",
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
          itemCount: books.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 300,
          ),

          itemBuilder: (context, index) {
            return ProductCard(
              product: books[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            ProductDetailsScreen(product: books[index]),
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
