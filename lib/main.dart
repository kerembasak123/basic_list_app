import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserListScreen(),
    );
  }
}


class UserListScreen extends StatelessWidget {
  final List<User> users = List.generate(
    10,
        (index) => User(name: 'User $index', age: 20 + index),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kullanıcı Listesi'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(users[index].name[0]),
            ),
            title: Text(users[index].name),
            subtitle: Text('Yaş: ${users[index].age}'),
          );
        },
      ),
    );
  }
}
