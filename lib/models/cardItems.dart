class CardItem {
  final String icon;
  final String value;
  final String title;
  

  CardItem({
    required this.icon,
    required this.value,
    required this.title,
    
  });
}

final List<CardItem> cardItems = [
  CardItem(
    icon: 'assets/svg/home.svg',
    value: "10,983",
    title: "Total Sales",
  ),
  CardItem(
    icon: 'assets/svg/product-2.svg',
    value: "10,983",
    title: "Products",
  ),
  CardItem(
    icon: 'assets/svg/all-orders-2.svg',
    value: "10,983",
    title: "Orders",
  ),
  CardItem(
    icon: 'assets/svg/person-2.svg',
    value: "10,983",
    title: "Users",
  ),
  
  // Add more menu items as needed
];
