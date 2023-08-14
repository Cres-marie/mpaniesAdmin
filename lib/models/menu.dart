class MenuItem {
  final String icon;
  final String title;
  

  MenuItem({
    required this.icon,
    required this.title,
  });
}

final List<MenuItem> menuItems = [
  MenuItem(
    icon: 'assets/svg/home.svg',
    title: "Dashboard",
  ),
  MenuItem(
    icon: 'assets/svg/categories-1.svg',
    title: "Categories",
  ),
  MenuItem(
    icon: 'assets/svg/product-1.svg',
    title: "Products",
  ),
  MenuItem(
    icon: 'assets/svg/all-orders-1.svg',
    title: "Orders",
  ),
  MenuItem(
    icon: 'assets/svg/person-1.svg',
    title: "Users",
  ),
  MenuItem(
    icon: 'assets/svg/signout.svg',
    title: "SignOut",
  ),
  // Add more menu items as needed
];
