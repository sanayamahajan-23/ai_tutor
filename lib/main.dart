import 'package:flutter/material.dart';

void main() {
  runApp(const AITutorApp());
}

class AITutorApp extends StatelessWidget {
  const AITutorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Tutor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F7),
      appBar: AppBar(
        title: const Text(
          'AI Tutor',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Avatar section
            Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    'assets/avatar.jpg',
                  ), // placeholder image
                  backgroundColor: Colors.indigo[100],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Hello! I'm your AI Tutor 👋",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            // Conversation area (for later AI responses)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              height: 200,
              width: double.infinity,
              child: const Text(
                "AI: Let's start practicing your English speaking skills!",
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Mic + Streak
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Streak placeholder
                Row(
                  children: const [
                    Icon(Icons.local_fire_department, color: Colors.orange),
                    SizedBox(width: 5),
                    Text("Streak: 3 days"),
                  ],
                ),

                // Mic button
                FloatingActionButton(
                  onPressed: () {
                    // will add voice logic later
                  },
                  backgroundColor: Colors.indigo,
                  child: const Icon(Icons.mic, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
