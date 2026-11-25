import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.person, size: 70, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                'Chalisa (chalisa1103)',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Student ID: 67190561 | Computer Engineering',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 24),
              Card(
                elevation: 2,
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.deepPurple),
                  title: const Text('chalisa.nk@mail.wu.ac.th'),
                ),
              ),
              const SizedBox(height: 8),
              Card(
                elevation: 2,
                child: ListTile(
                  leading: const Icon(Icons.school, color: Colors.deepPurple),
                  title: const Text('Walailak University'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}