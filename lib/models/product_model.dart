import 'package:online_groceries_app/helpers/app_images.dart';

class Product {
  Product({
    this.image,
    this.name,
    this.price,
    this.details,
    this.unit,
  });
  String? image;
  String? name;
  double? price;
  String? details;
  String? unit;
}

class ExclusiveOffer extends Product {
  ExclusiveOffer({
    super.image,
    super.name,
    super.price,
    super.details,
    super.unit,
  });
}

class BestSelling extends Product {
  BestSelling({
    super.image,
    super.name,
    super.price,
    super.details,
    super.unit,
  });
}

class Groceries extends Product {
  Groceries({
    super.image,
    super.name,
    super.price,
    super.details,
    super.unit,
  });
}

class Frozen extends Product {
  Frozen({
    super.image,
    super.name,
    super.price,
    super.details,
    super.unit,
  });
}

class Beverages extends Product {
  Beverages({
    super.image,
    super.name,
    super.price,
    super.details,
    super.unit,
  });
}

List<ExclusiveOffer> exclusiveOffers = [
  ExclusiveOffer(
    image: Assets.imagesProductsProduct1,
    name: "Organic Bananas",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  ExclusiveOffer(
    image: Assets.imagesProductsProduct2,
    name: "Naturel Red Apple",
    price: 3.10,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1Kg , Priceg",
  ),
  ExclusiveOffer(
    image: Assets.imagesProductsProduct3,
    name: "Ginger",
    price: 5.66,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "250gm , Pric",
  ),
  ExclusiveOffer(
    image: Assets.imagesProductsProduct1,
    name: "Organic Bananas",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  ExclusiveOffer(
    image: Assets.imagesProductsProduct2,
    name: "Naturel Red Apple",
    price: 3.10,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1Kg , Priceg",
  ),
  ExclusiveOffer(
    image: Assets.imagesProductsProduct3,
    name: "Ginger",
    price: 5.66,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "250gm , Pric",
  ),
];

List<BestSelling> bestSelling = [
  BestSelling(
    image: Assets.imagesProductsProduct2,
    name: "Naturel Red Apple",
    price: 3.10,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1Kg , Priceg",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct3,
    name: "Ginger",
    price: 5.66,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "250gm , Pric",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct1,
    name: "Organic Bananas",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct2,
    name: "Naturel Red Apple",
    price: 3.10,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1Kg , Priceg",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct3,
    name: "Ginger",
    price: 5.66,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "250gm , Pric",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct1,
    name: "Organic Bananas",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct6,
    name: "Beef Bone",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1kg, Priceg",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct7,
    name: "Broiler Chicken",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct6,
    name: "Organic Bananas",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  BestSelling(
    image: Assets.imagesProductsProduct7,
    name: "Organic Bananas",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
];

List<Groceries> groceries = [
  Groceries(
    image: Assets.imagesProductsProduct4,
    name: "Pulses",
    price: 3.10,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1Kg , Priceg",
  ),
  Groceries(
    image: Assets.imagesProductsProduct5,
    name: "Rice",
    price: 5.66,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "250gm , Pric",
  ),
  Groceries(
    image: Assets.imagesProductsProduct4,
    name: "Pulses",
    price: 3.10,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1Kg , Priceg",
  ),
  Groceries(
    image: Assets.imagesProductsProduct5,
    name: "Rice",
    price: 5.66,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "250gm , Pric",
  ),
];

List<Frozen> frozens = [
  Frozen(
    image: Assets.imagesProductsProduct7,
    name: "Broiler Chicken",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  Frozen(
    image: Assets.imagesProductsProduct6,
    name: "Beef Bone",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "1kg, Priceg",
  ),
  Frozen(
    image: Assets.imagesProductsProduct7,
    name: "Broiler Chicken",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
  Frozen(
    image: Assets.imagesProductsProduct6,
    name: "Beef Bone",
    price: 4.99,
    details:
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    unit: "7pcs , Priceg",
  ),
];

List<Beverages> beverages = [
  Beverages(
      image: Assets.imagesProductsProduct8,
      name: "Diet Coke",
      price: 1.99,
      unit: "355ml, Price",
      details:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."),
  Beverages(
      image: Assets.imagesProductsProduct9,
      name: "Sprite Can",
      price: 1.99,
      unit: "355ml, Price",
      details:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."),
  Beverages(
      image: Assets.imagesProductsProduct10,
      name: "Apple & Grape Juice",
      price: 1.99,
      unit: "355ml, Price",
      details:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."),
  Beverages(
      image: Assets.imagesProductsProduct11,
      name: "Orenge Juice",
      price: 1.99,
      unit: "355ml, Price",
      details:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."),
  Beverages(
      image: Assets.imagesProductsProduct12,
      name: "Coca Cola Can",
      price: 1.99,
      unit: "355ml, Price",
      details:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."),
  Beverages(
      image: Assets.imagesProductsProduct13,
      name: "Pepsi Can ",
      price: 1.99,
      unit: "355ml, Price",
      details:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet."),
];
