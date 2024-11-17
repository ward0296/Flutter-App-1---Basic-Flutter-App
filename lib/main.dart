//References for this assignemnt: Course website, youtube, google, stackoverflow, flutter.dev, in class exercises, and professor shoaib.
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images and Assets App',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images and Assets'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // Horizontal ListView with External URL Images
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network(
                      'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      width: 400,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16),
                    Image.network(
                      'https://images.pexels.com/photos/120049/pexels-photo-120049.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      width: 400,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16),
                    Image.network(
                      'https://images.pexels.com/photos/707046/pexels-photo-707046.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
                      width: 400,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // This is the ListTiles with the Fonts and Background Colors
              Container(
                color: Colors
                    .lightBlueAccent, // this is the background for Roboto Black
                child: const ListTile(
                  leading: Icon(Icons.star, color: Colors.white),
                  title: Text(
                    'Roboto Black',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                color: Colors
                    .greenAccent, // this is the background for Roboto Black Italic
                child: const ListTile(
                  leading: Icon(Icons.favorite, color: Colors.black),
                  title: Text(
                    'Roboto Black Italic',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                color: Colors
                    .orangeAccent, // this is the background for Roboto Bold Italic
                child: const ListTile(
                  leading: Icon(Icons.text_fields, color: Colors.white),
                  title: Text(
                    'Roboto Bold Italic',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                color: Colors
                    .pinkAccent, // this is the background for Roboto Italic
                child: const ListTile(
                  leading: Icon(Icons.accessibility, color: Colors.white),
                  title: Text(
                    'Roboto Italic',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Horizontal ListView with Asset Images
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      'assets/images/a.LuxuryCar.jpg',
                      width: 410,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16),
                    Image.asset(
                      'assets/images/a.Mclaren.jpg',
                      width: 410,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16),
                    Image.asset(
                      'assets/images/a.Porsche2022.jpg',
                      width: 410,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
