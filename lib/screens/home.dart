import 'package:newbusinessapp/screens/favorites_screen.dart';
import 'package:newbusinessapp/screens/main_page.dart';
import 'package:newbusinessapp/screens/settings.dart';
import 'package:newbusinessapp/screens/test.dart';
import '/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> requestPermissions() async {
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    await Permission.storage.request();
  }
}

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  void initState() {
    super.initState();
    requestPermissions();
  }

  List<Widget> myScreens = const [
    MainPage(),
    TestScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
      onTap: (value) => setState(() {
        currentIndex = value;
      }),
      currentIndex: currentIndex,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Asosiy',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Colors.blue,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/images/quiz.png',
                    width: 24,
                    height: 24,
                  ),
                )
              : Image.asset(
                  'assets/images/quiz.png',
                  width: 24,
                  height: 24,
                ),
          label: 'Testlar',
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.favorite), label: 'Saqlanganlar'),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Sozlamalar',
        ),
      ],
    );
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Business App'),
        elevation: 0,
      ),
      drawer: const MainDrawer(),
      bottomNavigationBar: bottomNavigationBar(),
      body: myScreens[currentIndex],
    );
  }
}
