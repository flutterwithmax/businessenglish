import 'package:flutter/material.dart';
import 'package:newbusinessapp/screens/search_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget listTile(String title, IconData icon, void Function() onTap) {
      return ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          // color: Colors.black,
          size: 26,
        ),
        title: Text(
          title,
        ),
      );
    }

    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 240,
            child: Image.asset(
              'assets/images/drawer_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          listTile('Ta`lim', Icons.lightbulb, () {}),
          listTile('Testlar', Icons.quiz, () {}),
          listTile('Qidiruv', Icons.search, () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SearchScreen(),
            ));
          }),
          listTile('Saqlanganlar', Icons.favorite, () {}),
        ],
      ),
    );
  }
}
