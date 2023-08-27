
class ProductItem {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String category;
  final String subCategory;
  final String images;
  final List<String> slideImages;

  ProductItem({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.category,
    required this.subCategory,
    required this.images,
    required this.slideImages
  });

}

final List<ProductItem> productItems = [
    ProductItem(
      id : 1,
      title: 'MakeUp Brushes',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      category: 'Skin Care',
      subCategory: 'Moisteurizer',
      images: 'assets/images/makeup1.jpg',
      slideImages: [
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
    ],
    ),


    ProductItem(
      id : 2,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 0,
      subCategory: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup8.jpg',
      slideImages: [
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
    ],
    ),

    ProductItem(
      id : 3,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 18,
      subCategory: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup6.jpg',
      slideImages: [
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
    ],
    ),

    ProductItem(
      id : 4,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      subCategory: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup4.jpg',
      slideImages: [
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
    ],
    ),

    ProductItem(
      id : 5,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 2,
      subCategory: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup3.jpg',
      slideImages: [
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
    ],
    ),

    ProductItem(
      id : 6,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 15,
      subCategory: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup7.jpg',
      slideImages: [
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
    ],
    ),

];