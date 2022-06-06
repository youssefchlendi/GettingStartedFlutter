// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1).animate(controller);
    controller.forward();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    controller.forward();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(
          title: 'Product layout demo home page',
          animation: animation,
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title, required this.animation})
      : super(key: key);
  final String title;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            FadeTransition(
                child: ProductBox(
                    name: "iPhone",
                    description: "iPhone is the stylist phone ever",
                    price: 1000,
                    image: "iphone.jpg"),
                opacity: animation),
            MyAnimatedWidget(
                child: ProductBox(
                    name: "Pixel",
                    description: "Pixel is the most featureful phone ever",
                    price: 800,
                    image: "pixel.jpg"),
                animation: animation),
            ProductBox(
                name: "Laptop",
                description: "Laptop is most productive development tool",
                price: 2000,
                image: "laptop.jpg"),
            ProductBox(
                name: "Tablet",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 1500,
                image: "tablet.jpg"),
            ProductBox(
                name: "Pendrive",
                description: "Pendrive is useful storage medium",
                price: 100,
                image: "pendrive.jpg"),
            ProductBox(
                name: "Floppy Drive",
                description: "Floppy drive is useful rescue storage medium",
                price: 20,
                image: "floppydisk.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/$image"),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(description),
                          Text("Price: $price"),
                        ],
                      )))
            ])));
  }
}

class MyAnimatedWidget extends StatelessWidget {
  MyAnimatedWidget({required this.child, required this.animation});
  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) => Center(
        child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) =>
                Opacity(opacity: animation.value, child: child),
            child: child),
      );
}
