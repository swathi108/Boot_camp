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
      title: 'Elegant Profile',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int followers = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDEFFB), // Light pastel background
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: const Color(0xFFBFA2DB), // Soft purple pastel
        elevation: 0,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          color: const Color(0xFFFDF6FF), // Light pastel card
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Circle Avatar with random girl image
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/women/68.jpg",
                  ),
                ),
                const SizedBox(height: 16),

                // Name
                const Text(
                  "lily",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7B4EA2), // Pastel purple
                  ),
                ),
                const SizedBox(height: 8),

                // Bio
                const Text(
                  "Creative designer and tech enthusiast. Loves exploring new ideas and crafting beautiful experiences.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 16),

                // Extra details
                const Text("Age: 23", style: TextStyle(color: Colors.black87)),
                const Text("Location: San Francisco, USA",
                    style: TextStyle(color: Colors.black87)),
                const Text("Hobbies: Painting, Music, Travel",
                    style: TextStyle(color: Colors.black87)),
                const SizedBox(height: 16),

                // Followers count
                Text(
                  "Followers: $followers",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7B4EA2),
                  ),
                ),
                const SizedBox(height: 12),

                // Follow button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBFA2DB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: () {
                    setState(() {
                      followers++;
                    });
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                    child: Text(
                      "Follow +1",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 
