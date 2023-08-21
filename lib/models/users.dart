class User {
  final int id;
  final String userName;
  final String password;
  final String email;
  final String role;
  final String date;


  User({required this.id, required this.userName, required this.password, required this.email, required this.role, required this.date});
}

final List<User> userdetails = [

  User(
    id: 1,
    userName: 'Mary', 
    password: 'wert5456', 
    email: 'mary@gmail.com', 
    role: 'admin', 
    date: "01-03-2023"
  ),

  User(id: 2,
    userName: 'Theo', 
    password: 'wert5456', 
    email: 'mary@gmail.com', 
    role: 'admin', 
    date: "01-03-2023"
  ),

];