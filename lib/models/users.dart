class User {
  final int id;
  final String userName;
  final String password;
  final String email;
  final String role;
  final String date;
  final DateTime lastLogin;




  User({required this.id, required this.userName, required this.password, required this.email, required this.role, required this.date, required this.lastLogin});
}

final List<User> userdetails = [

  User(
    id: 1,
    userName: 'Mary', 
    password: 'wert5456', 
    email: 'mary@gmail.com', 
    role: 'admin', 
    date: "01-03-2023",
    lastLogin: DateTime.parse('2023-08-27T12:34:56Z'),

  ),

  User(id: 2,
    userName: 'Theo', 
    password: 'wert5456', 
    email: 'mary@gmail.com', 
    role: 'admin', 
    date: "01-03-2023",
    lastLogin: DateTime.parse('2023-08-27T12:34:56Z'),

  ),

];