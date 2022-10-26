// ignore_for_file: public_member_api_docs, sort_constructors_first
class Food {
  final String id;
  final String name;
  final String imgUrl;
  final String price;
  Food({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.price,
  });
  static List<Food> foods = [
    Food(
        id: "1",
        name: "Hamburger",
        imgUrl:
            "https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/16:9/w_1280,c_limit/the-ultimate-hamburger.jpg",
        price: "\$10.0"),
    Food(
        id: "2",
        name: "Sushi",
        imgUrl:
            "https://media.healthyfood.com/wp-content/uploads/2017/03/Sushi_in_10_steps.jpg",
        price: "\$10.0"),
    Food(
        id: "3",
        name: "Pizza",
        imgUrl:
            "https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/xheysiet81o1h8zofhdm",
        price: "\$10.0"),
    Food(
        id: "1",
        name: "Noodles",
        imgUrl:
            "https://static.toiimg.com/thumb/59789125.cms?width=1200&height=900",
        price: "\$10.0"),
    Food(
        id: "1",
        name: "Momos",
        imgUrl:
            "https://www.tiffinboxfood.com/wp-content/uploads/2020/03/chicken-momo-1.jpg",
        price: "\$10.0"),
    Food(
        id: "1",
        name: "Fried Rice",
        imgUrl:
            "https://vismaifood.com/storage/app/uploads/public/de8/89b/c96/thumb__700_0_0_0_auto.jpg",
        price: "\$10.0"),
  ];
}
