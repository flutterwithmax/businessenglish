import '/screens/search_screen.dart';
import 'package:flutter/material.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: ((context) => const SearchScreen()))),
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        width: double.infinity,
        height: 66,
        child: Container(
          margin: const EdgeInsets.only(
            right: 20,
            left: 20,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          width: double.infinity,
          height: 40,
          child: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Search Dictionary',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 123, 123, 123),
                ),
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: Color.fromARGB(255, 123, 123, 123),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
