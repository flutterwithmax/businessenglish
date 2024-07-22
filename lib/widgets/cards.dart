import 'package:flutter/material.dart';

const myColor = Color.fromRGBO(67, 245, 251, 0.849);

class Cards extends StatelessWidget {
  final String uzWord;
  final String engWord;
  final String transcription;
  final bool showbuttons;
  final bool fileExist;
  final VoidCallback onPlay;
  const Cards(
      {super.key,
      required this.engWord,
      required this.transcription,
      required this.uzWord,
      required this.onPlay,
      required this.fileExist,
      this.showbuttons = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12), topLeft: Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              uzWord,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                engWord,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                transcription,
                style: const TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
            if (showbuttons)
              Row(
                children: [
                  IconButton(
                    onPressed: onPlay,
                    icon: Icon(
                      fileExist ? Icons.play_circle_outline : Icons.download,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      size: 35,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
