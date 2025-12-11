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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel App"),
      ),

      // ------------------ DRAWER HERE ------------------
      drawer: const TravelAppDrawer(),

      body: const Center(
        child: Text(
          "Welcome to the Travel App!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

class TravelAppDrawer extends StatelessWidget {
  const TravelAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          // ------------------ Drawer Header ------------------
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/travel_bg.jpg"), // <-- You can replace
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage("assets/images/profile.jpg"), // <-- Replace
                ),
                const SizedBox(height: 12),
                const Text(
                  "Welcome, Traveler!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // ------------------ Drawer Items ------------------
          ListTile(
            leading: const Icon(Icons.flight_takeoff),
            title: const Text("Discover Trips"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text("Explore Map"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text("Bookings"),
            onTap: () {},
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("Saved Places"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.card_travel),
            title: const Text("Travel Packages"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.support_agent),
            title: const Text("Support"),
            onTap: () {},
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
