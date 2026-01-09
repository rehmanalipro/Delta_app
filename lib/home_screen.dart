import 'package:delta_app/screen2.dart';
import 'package:delta_app/screen3.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color.fromARGB(255, 188, 152, 74),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 133, 23, 59),
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/users/avatars/2158556997/rehman-ali-875.jpg?auto=compress&fit=crop&h=130&w=130&dpr=1',
                ),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://dailyausaf.com/en/wp-content/uploads/2024/09/FIRE-WALL-INSTALLATION-2024-09-27T132052.229-1024x576.png.avif',
                  ),
                ),
              ],

              accountName: const Text('Rehman Ali'),
              accountEmail: const Text('rehmanali.pk60@gmail.com'),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, Screen2.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, Screen3.id);
              },
            ),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Screen2.id);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Screen2()),
                // );
              },
              child: Text('Home'),
            ),
          ),
        ],
      ),
    );
  }
}
