import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'My shop'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            MyProduct(
                name: "iPhone",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image: "iphone.jpg"),
            MyProduct(
                name: "Pixel",
                description: "Pixel is the most featureful phone ever",
                price: 800,
                image: "pixel.jpg"),
            MyProduct(
                name: "Laptop",
                description: "Laptop is most productive development tool",
                price: 2000,
                image: "laptop.jpg"),
            MyProduct(
                name: "Tablet",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 1500,
                image: "tablet.jpg"),
            MyProduct(
                name: "Pendrive",
                description: "Pendrive is useful storage medium",
                price: 100,
                image: "pendrive.jpg"),
            MyProduct(
                name: "Floppy Drive",
                description: "Floppy drive is useful rescue storage medium",
                price: 20,
                image: "floppydisk.jpg"),
          ],
        ));
  }
}

class MyProduct extends StatelessWidget {
  MyProduct(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image});
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/$image"),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(name,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Text(description),
                        Text("Price = ${price.toString()}"),
                      ],
                    )))
          ],
        )));
  }
}
