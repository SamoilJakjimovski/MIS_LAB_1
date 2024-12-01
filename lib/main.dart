import 'package:flutter/material.dart';
import 'product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'T-shirt',
      'image': 'assets/tshirt.jpg',
      'description': 'This is the best t-shirt on the market',
      'made_in': 'China',
      'price': '\$15',
    },
    {
      'name': 'Jeans',
      'image': 'assets/jeans.jpg',
      'description': 'Denim jeans for men on sale now',
      'made_in': 'Japan',
      'price': '\$30',
    },
    {
      'name': 'Jacket',
      'image': 'assets/jacket.jpg',
      'description': 'Warm winter jacket',
      'made_in': 'Honduras',
      'price': '\$50',
    },
    {
      'name': 'Sunglasses',
      'image': 'assets/sunglasses.jpg',
      'description': 'The one pair of glasses you need, for everyone',
      'made_in': 'Macedonia',
      'price': '\$15',
    },
    {
      'name': 'Beanie',
      'image': 'assets/beanie.jpg',
      'description':
          'Comfortable beanie for the winter season ahead. Buy it now!',
      'made_in': 'Japan',
      'price': '\$30',
    },
    {
      'name': 'Sneakers',
      'image': 'assets/sneakers.jpg',
      'description': 'Stylish sneakers for men, suitable for everyone',
      'made_in': 'Thailand',
      'price': '\$50',
    },
    {
      'name': 'Hoodie',
      'image': 'assets/hoodie.jpg',
      'description': 'A cozy hoodie to keep you warm during chilly evenings',
      'made_in': 'Vietnam',
      'price': '\$25',
    },
    {
      'name': 'Cap',
      'image': 'assets/cap.jpg',
      'description': 'Stylish cap to complement your casual look',
      'made_in': 'India',
      'price': '\$10',
    },
    {
      'name': 'Dress',
      'image': 'assets/dress.jpg',
      'description': 'Elegant dress for all your formal occasions',
      'made_in': 'Italy',
      'price': '\$70',
    },
    {
      'name': 'Scarf',
      'image': 'assets/scarf.jpg',
      'description': 'Soft and lightweight scarf to add flair to your outfit',
      'made_in': 'France',
      'price': '\$15',
    },
    {
      'name': 'Shorts',
      'image': 'assets/shorts.jpg',
      'description': 'Comfortable shorts for your summer adventures',
      'made_in': 'Brazil',
      'price': '\$20',
    },
    {
      'name': 'Blazer',
      'image': 'assets/blazer.jpg',
      'description':
          'Sophisticated blazer for business meetings and formal events',
      'made_in': 'USA',
      'price': '\$100',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('211036'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, 
          childAspectRatio: 7 / 8, 
          mainAxisSpacing: 8, 
          crossAxisSpacing: 8, 
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetails(product: product),
                ),
              );
            },
            child: Card(
              elevation: 4, 
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, 
                crossAxisAlignment: CrossAxisAlignment
                    .center, 
                children: [
                  Image.asset(
                    product['image'],
                    height: 150, 
                    fit: BoxFit.contain, 
                  ),
                  const SizedBox(height: 8), 
                  Text(
                    product['name'],
                    style: const TextStyle(fontSize: 14), 
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4), 
                  Text(
                    product['price'],
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 12), 
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
