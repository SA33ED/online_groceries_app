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

class ExclusiveOffer extends Product{
  ExclusiveOffer({
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
];
