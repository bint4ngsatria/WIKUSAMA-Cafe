class user {
  final int userId;
  final String userName;
  final String password;
  final String role;

  user({
    required this.userId,
    required this.userName,
    required this.password,
    required this.role,
  });

  factory user.fromMap(Map<String, dynamic> json) => user(
    userId: json["userID"],
    userName: json["userName"],
    password: json["password"],
    role: json["role"],
  );

  Map<String, dynamic> toMap() => {
    "userID": userId,
    "userName": userName,
    "password": password,
    "role": role,
  };
}
