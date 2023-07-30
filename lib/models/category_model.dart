import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/models/product_model.dart';

class Category {
  Category({
    required this.image,
    required this.name,
    required this.products,
  });
  String name;
  String image;
  List products;
}

List<Category> categories = [
  Category(image: Assets.imagesCategoriesImg1,name: "Frash Fruits & Vegetable",products: beverages,),
  Category(image: Assets.imagesCategoriesImg2,name: "Cooking Oil & Ghee",products: beverages,),
  Category(image: Assets.imagesCategoriesImg3,name: "Meat & Fish",products: beverages,),
  Category(image: Assets.imagesCategoriesImg4,name: "Bakery & Snacks",products: beverages,),
  Category(image: Assets.imagesCategoriesImg5,name: "Dairy & Eggs",products: beverages,),
  Category(
    image: Assets.imagesCategoriesImg6,
    name: "Beverages",
    products: beverages,
  ),
  Category(
    image: Assets.imagesCategoriesImg7,
    name: "Groceries",
    products: groceries,
  ),
  Category(
    image: Assets.imagesCategoriesImg8,
    name: "Frozens",
    products: frozens,
  ),
];
