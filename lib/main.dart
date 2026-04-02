import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,

      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Profile Image
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/Rehman.jpeg"),
            ),

            const SizedBox(height: 20),

            // Name
            const Text(
              'Ahmed Rehman',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Email (ListTile required use)
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: const ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text(
                  'rehman@email.com',
                  style: TextStyle(
                    fontFamily: 'Source Sans 3',
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Bio Container
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'I am a Flutter App Developer who builds simple and beautiful mobile applications.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Source Sans 3',
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Edit button pressed")),
          );
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.edit),
      ),
    );
  }
}