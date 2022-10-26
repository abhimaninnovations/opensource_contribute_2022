// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Food {
  final String? id;
  final String? name1;
  final String? name2;
  final String? imgUrl;
  final String? price;
  Food({
    required this.id,
    required this.name1,
    required this.name2,
    required this.imgUrl,
    required this.price,
  });
}

class FoodBar extends StatefulWidget {
  const FoodBar({Key? key}) : super(key: key);

  @override
  State<FoodBar> createState() => _FoodBarState();
}

class _FoodBarState extends State<FoodBar> {
  List<Food> foods = [
    Food(
        id: "1",
        name1: "Hamburger",
        name2: "Hamburger",
        imgUrl:
            "https://img.freepik.com/premium-photo/fresh-tasty-homemade-burger-wooden-table_147620-1309.jpg?w=2000",
        price: "\$10.0"),
    Food(
        id: "2",
        name1: "Hamburger",
        name2: "Hamburger",
        imgUrl:
            "https://media.healthyfood.com/wp-content/uploads/2017/03/Sushi_in_10_steps.jpg",
        price: "\$10.0"),
    Food(
        id: "3",
        name1: "Hamburger",
        name2: "Hamburger",
        imgUrl:
            "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/xheysiet81o1h8zofhdm",
        price: "\$10.0"),
    Food(
        id: "1",
        name1: "Hamburger",
        name2: "Hamburger",
        imgUrl:
            "https://static.toiimg.com/thumb/59789125.cms?width=1200&height=900",
        price: "\$10.0"),
    Food(
        id: "1",
        name1: "Hamburger",
        name2: "Hamburger",
        imgUrl:
            "https://www.tiffinboxfood.com/wp-content/uploads/2020/03/chicken-momo-1.jpg",
        price: "\$10.0"),
    Food(
        id: "1",
        name1: "Hamburger",
        name2: "Hamburger",
        imgUrl:
            "https://vismaifood.com/storage/app/uploads/public/de8/89b/c96/thumb__700_0_0_0_auto.jpg",
        price: "\$10.0"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              buildCard(foods[index]),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  Widget buildCard(Food food) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 310,
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 231, 231, 231),
      ),
      child: Column(
        children: [
          Container(
              height: 170,
              width: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(food.imgUrl!), fit: BoxFit.cover)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,\
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10, top: 10),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 232, 232, 232),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            food.name1!,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 130, 130, 130)),
          ),
          Text(
            food.name2!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            food.price!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
