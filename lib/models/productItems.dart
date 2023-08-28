
class ProductItem {
  final int id;
  final String title;
  final String description;
  final double price;
  final String status;
  final String country;
  final String customerName;
  final String email;
  final String date;
  final String total;
  final String paid;
  final String paymentMethod;
  final int items;
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
    required this.status, 
    required this.country, 
    required this.customerName,
    required this.email, 
    required this.date, 
    required this.total,
    required this.paid,
    required this.paymentMethod,
    required this.items,
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
      status: "Pending",
      country: "Uganda",
      customerName: "Hans Weber",
      email: 'hellena1234@gmail.com',
      date: "01-03-2023",
      total: "\$30009.0",
      paid: 'yes',
      paymentMethod: 'paypal',
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      items: 3,
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
      status: "Pending",
      country: "Uganda",
      customerName: "Hans Weber",
      email: 'hellena1234@gmail.com',
      date: "01-03-2023",
      total: "\$30009.0",
      paid: 'yes',
      paymentMethod: 'paypal',
      discountPercentage: 20,
      rating: 4,
      stock: 0,
      items: 3,
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
      status: "Pending",
      country: "Uganda",
      customerName: "Hans Weber",
      email: 'hellena1234@gmail.com',
      date: "01-03-2023",
      total: "\$30009.0",
      paid: 'yes',
      paymentMethod: 'paypal',
      discountPercentage: 20,
      rating: 4,
      stock: 18,
      items: 3,
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
      status: "Pending",
      country: "Uganda",
      customerName: "Hans Weber",
      email: 'hellena1234@gmail.com',
      date: "01-03-2023",
      total: "\$30009.0",
      paid: 'yes',
      paymentMethod: 'paypal',
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      items: 3,
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
      status: "Pending",
      country: "Uganda",
      customerName: "Hans Weber",
      email: 'hellena1234@gmail.com',
      date: "01-03-2023",
      total: "\$30009.0",
      paid: 'yes',
      paymentMethod: 'paypal',
      discountPercentage: 20,
      rating: 4,
      stock: 2,
      items: 3,
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
      status: "Pending",
      country: "Uganda",
      customerName: "Hans Weber",
      email: 'hellena1234@gmail.com',
      date: "01-03-2023",
      total: "\$30009.0",
      paid: 'yes',
      paymentMethod: 'paypal',
      discountPercentage: 20,
      rating: 4,
      stock: 15,
      items: 3,
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