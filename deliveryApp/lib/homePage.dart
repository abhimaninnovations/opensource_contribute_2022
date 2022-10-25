// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/food_models.dart';

import 'food_bar.dart';

class Home_Page extends StatelessWidget {
  // final List<Food> food;
  Home_Page({
    Key? key,
    // required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _CustomAppBar(),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, right: 20),
              width: MediaQuery.of(context).size.width / 1.4,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 238, 237, 237),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            hintText: 'Search for food',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            ),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              size: 25,
                              color: Color.fromARGB(255, 98, 98, 98),
                            ))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 30,
                    child: Icon(
                      Icons.filter,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending Now",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("See all",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.pink))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TrendingFood(),
                  TrendingFood(),
                  TrendingFood(),
                  TrendingFood(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // color: Colors.grey,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 40,
                    child: Row(
                      children: [
                        Icon(
                          Icons.dashboard,
                          size: 30,
                          color: Colors.pink,
                        ),
                        // SizedBox(
                        //   width: 30,
                        // ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 40,
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 30,
                          color: Color.fromARGB(255, 98, 98, 98),
                        ),
                        // SizedBox(
                        //   width: 30,
                        // ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 40,
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 30,
                          color: Color.fromARGB(255, 98, 98, 98),
                        ),
                        // SizedBox(
                        //   width: 30,
                        // ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 40,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 30,
                          color: Color.fromARGB(255, 98, 98, 98),
                        ),
                        // SizedBox(
                        //   width: 30,
                        // ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingFood extends StatelessWidget {
  TrendingFood({
    Key? key,
  }) : super(key: key);
  double price = 10.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          height: 290,
          width: 220,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 238, 238, 238),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://img.freepik.com/premium-photo/fresh-tasty-homemade-burger-wooden-table_147620-1309.jpg?w=2000"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, top: 10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Hamburger",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 122, 121, 121)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Chicken Burger",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$price",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.pink),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hi, Ashu",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 118, 115, 115)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "What do you want to eat?",
                    style: TextStyle(
                        color: Color.fromRGBO(48, 47, 47, 1), fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
