
class ProductItem {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String images;

  ProductItem({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.images,
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
      brand: 'Moisteurizer',
      category: 'Skin Care',
      images: 'assets/images/makeup1.jpg',
      
    ),


    ProductItem(
      id : 1,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 0,
      brand: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup8.jpg',
    ),

    ProductItem(
      id : 1,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 18,
      brand: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup6.jpg',
    ),

    ProductItem(
      id : 1,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      brand: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup4.jpg',
    ),

    ProductItem(
      id : 1,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 2,
      brand: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup3.jpg',
    ),

    ProductItem(
      id : 1,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 15,
      brand: 'Spray',
      category: 'Hair',
      images: 'assets/images/makeup7.jpg',
    ),

];