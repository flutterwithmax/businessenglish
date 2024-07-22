import 'package:flutter/material.dart';
import 'package:newbusinessapp/models/word.dart';
import 'package:newbusinessapp/providers/favorites.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const myColor = Color.fromRGBO(67, 245, 251, 0.849);

class WordsCard extends ConsumerStatefulWidget {
  final Word word;

  const WordsCard({
    super.key,
    required this.word,
  });

  @override
  ConsumerState<WordsCard> createState() => _WordsCardState();
}

class _WordsCardState extends ConsumerState<WordsCard> {
  late String localFilePath;
  bool isDownloaded = false;
  bool isPlaying = false;
  bool isDownloading = false;
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    _checkIfFileExists();
    _initAudioPlayerListeners();
  }

  void _shareLink(String word) async {
    // Replace with your desired link

    await Share.share(word);
  }

  Future<void> _checkIfFileExists() async {
    final prefs = await SharedPreferences.getInstance();
    final isDownloaded = prefs.getBool(widget.word.uzWord) ?? false;

    if (isDownloaded) {
      final directory = await getApplicationDocumentsDirectory();
      localFilePath = '${directory.path}/${widget.word.uzWord}.mp3';
      setState(() {
        this.isDownloaded = true;
      });
    }
  }

  Future<void> _downloadFile() async {
    setState(() {
      isDownloading = true;
    });

    final directory = await getApplicationDocumentsDirectory();
    localFilePath = '${directory.path}/${widget.word.uzWord}.mp3';

    final dio = Dio();
    try {
      final response = await dio.download(widget.word.soundUrl!, localFilePath);
      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool(widget.word.uzWord, true);
        setState(() {
          isDownloaded = true;
        });
      }
    } catch (e) {
      print("Download error: $e");
    } finally {
      setState(() {
        isDownloading = false;
      });
    }
  }

  void _initAudioPlayerListeners() {
    audioPlayer.onPlayerStateChanged.listen((playerState) {
      if (playerState == PlayerState.completed) {
        setState(() {
          isPlaying = false;
        });
      }
    });
  }

  void _playPauseAudio() async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play(DeviceFileSource(localFilePath));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget play;

    bool isFav = false;

    if (ref.read(favoriteWords).contains(widget.word)) {
      isFav = true;
    }

    if (isDownloading) {
      play = const CircularProgressIndicator();
    } else if (isDownloaded) {
      play = IconButton(
        icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
        onPressed: _playPauseAudio,
      );
    } else {
      play = IconButton(
        icon: const Icon(Icons.download),
        onPressed: _downloadFile,
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 4),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                widget.word.uzWord,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    widget.word.engWord,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    widget.word.transcription,
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
                Row(
                  children: [
                    play,
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        ref
                            .watch(favoriteWords.notifier)
                            .toggleFavStats(widget.word);
                        setState(() {});
                      },
                      icon: Icon(
                        isFav ? Icons.favorite : Icons.favorite_border,
                        size: 35,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _shareLink(widget.word.engWord);
                      },
                      icon: const Icon(
                        Icons.share,
                        size: 35,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
