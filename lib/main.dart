import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrls = [
      'https://picsum.photos/id/162/300/200',
      'https://picsum.photos/id/164/300/200',
      'https://picsum.photos/id/174/300/200',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('City Tour')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final imageUrl in imageUrls) ...[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          imageUrl,
                          width: 150,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12.0),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Explore, Enjoy, Experience.',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16.0),
              const Text(
                "Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and seren natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today.",
              ),
              const SizedBox(height: 16.0),
              Image.network(
                'https://picsum.photos/id/162/200/300',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8.0),
              const Text('Blue body of water'),
            ],
          ),
        ),
      ),
    );
  }
}
