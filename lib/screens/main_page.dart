import 'package:flutter/material.dart';
import 'package:newbusinessapp/data/data.dart';
import 'package:newbusinessapp/widgets/topic_details.dart';
import 'package:newbusinessapp/widgets/search_panel.dart';
import 'package:newbusinessapp/widgets/topic_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SearchPanel(),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2.7,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => TopicDetails(
                            topic: dummy_data[index],
                            index: index,
                          ))));
                },
                child: TopicItem(
                  title: dummy_data[index].name,
                  imgPath: dummy_data[index].imagePath,
                ),
              ),
              itemCount: dummy_data.length,
            ),
          ),
        ],
      ),
    );
  }
}
