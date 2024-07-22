import 'package:newbusinessapp/widgets/phrases_card.dart';
import '/data/data.dart';
import '../models/topic.dart';
import '../models/phrase.dart';
import 'package:flutter/material.dart';

final List<Topic> dummyData = dummy_data; // Your data goes here

List<Phrase> search(String query) {
  List<Phrase> results = [];
  for (var topic in dummyData) {
    for (var phrase in topic.phrases) {
      if (phrase.uzPhrase.toLowerCase().contains(query.toLowerCase()) ||
          phrase.engPhase.toLowerCase().contains(query.toLowerCase()) ||
          phrase.transcription.toLowerCase().contains(query.toLowerCase())) {
        results.add(phrase);
      }
    }
  }
  return results;
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Phrase> searchResults = [];

  void runSearch(String query) {
    setState(() {
      searchResults = search(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (value) => runSearch(value),
              decoration: const InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return PhraseCard(phrase: searchResults[index]);
                },
                itemCount: searchResults.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
