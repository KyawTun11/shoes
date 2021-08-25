import 'package:flutter/material.dart';
import 'package:shoe_ui/ProductCard.dart';
import 'package:shoe_ui/search.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          'New Arrival',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          ImageIcon(
            AssetImage("assets/images/js.png"),
            color: Colors.black,
          ),
        ],
        backgroundColor: Color(0xFFECF2F4),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Search(),
            ProductCard(
                subtitle: r"$135",
                image: "assets/images/nike.png",
                title: "React Escape Run",
                color: Color(0xFFECF2F4),
                press: () {}),
            ProductCard(
                subtitle: r"$200",
                image: "assets/images/puma.png",
                title: "Women running shoes",
                color: Color(0xFFEC7430),
                press: () {}),
            ProductCard(
                subtitle: "subtitle",
                image: "assets/images/shoes_01.png",
                title: "title",
                color: Color(0xFFE1E3E4),
                press: () {}),
            ProductCard(
                subtitle: "subtitle",
                image: "assets/images/shoes_02.png",
                title: "title",
                color: Color(0xFFF7CB08),
                press: () {}),
            ProductCard(
                subtitle: "subtitle",
                image: "assets/images/sport shoes.png",
                title: "title",
                color: Color(0xFFECF2F4),
                press: () {}),
          ],
        ),
      ),
    );
  }
}
