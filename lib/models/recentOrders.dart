class RecentOrder {
  final int id;
  final String status;
  final String country;
  final String customerName;
  final String email;
  final String date;
  final String total;
  final String paid;
  final int items;

  RecentOrder({
    required this.id, 
    required this.status, 
    required this.country, 
    required this.customerName,
    required this.email, 
    required this.date, 
    required this.total,
    required this.paid,
    required this.items
  });
}

final List<RecentOrder> recentOrders =[
  
  RecentOrder(
    id: 1,
    status: "Pending",
    country: "Uganda",
    customerName: "Hans Weber",
    email: 'hellena1234@gmail.com',
    date: "01-03-2023",
    total: "\$30009.0",
    paid: 'yes',
    items: 3 

  ),
  RecentOrder(
    id: 2,
    status: "Pending",
    country: "Uganda",
    customerName: "Andrea Rossi",
    email: 'hellena1234@gmail.com',
    date: "01-03-2023",
    total: "\$30009.0",
    paid: 'No',
    items: 2 
  ),
  RecentOrder(
    id: 3,
    status: "completed",
    country: "Uganda",
    customerName: "Leonardo Garcia",
    email: 'hellena1234@gmail.com',
    date: "01-03-2023",
    total: "\$30009.0",
    paid: 'Yes',
    items: 6 
  ),
  RecentOrder(
    id: 4,
    status: "Cancelled",
    country: "Uganda",
    customerName: "Bruno Theodel",
    email: 'hellena1234@gmail.com',
    date: "01-03-2023",
    total: "\$30009.0",
    paid: 'Yes',
    items: 1
  ),
  RecentOrder(
    id: 5,
    status: "Completed",
    country: "Uganda",
    customerName: "Hans Weber",
    email: 'hellena1234@gmail.com',
    date: "01-03-2023",
    total: "\$30009.0",
    paid: 'Yes',
    items: 4 
  ),

  RecentOrder(
    id: 6,
    status: "Completed",
    country: "Uganda",
    customerName: "Hans Weber",
    email: 'hellena1234@gmail.com',
    date: "01-03-2023",
    total: "\$30009.0",
    paid: 'Partially',
    items: 2 
  ),
  
];